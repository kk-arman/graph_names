import logging
import javalang
import re

from javalang import tree as jtree


logging.basicConfig()
logger = logging.getLogger()

testng_re = r'\D*org.testng\D*'
junit_re = r'\D*org.junit\D*'
junit5_re = r'\D*org.junit.jupiter\D*'


annotations = ['test', 'parameterizedtest', 'repeatedtest', 'org.junit.test']


def tree_search(tree, predicate, walk_predicate=None):
    if walk_predicate and not walk_predicate(tree):
        return
    children = getattr(tree, 'children', [])
    if isinstance(tree, list):
        children = children or tree
    for t in children:
        if t is None:
            continue
        else:
            if predicate(t):
                yield t
            for res in tree_search(t, predicate, walk_predicate):
                yield res


def normalize(name):
    result = ''
    prev_upper = False
    for i, c in enumerate(name):
        if (
            i > 0 and i + 1 < len(name)
            and c.isupper()
            and not (name[i+1].isupper() and prev_upper) # lower char before or ahead
        ):
            result += ' '
        result += c
        prev_upper = c.isupper()
    return result.lower()


class JProject:
    def __init__(self, path, parse_only_test = False):
        self.path = path
        self.files = []
        for fname in self.path.rglob('*.java'):
            try:
                self.files.append(JFile(fname, parse_only_test))
            except Exception as e:
                err_msg = '%s->%s: %s' % (self.path.name, fname.name, type(e))
                logger.warning(err_msg)
                continue
                
        
    def __repr__(self):
        return self.path.name


class JFile:
    
    def __init__(self, path, parse_only_test = False):
        self.path = path
        source = self.path.read_text()
        self._tree = javalang.parse.parse(source)
        
        self.package_name = self._tree.package.name if self._tree.package else ''

        self.imports = [
            JImport(node)
            for node in
            tree_search(self._tree,
                        lambda n: isinstance(n, jtree.Import))
        ]

        self.is_JUnit = any(re.match(junit_re, x.full_name) for x in self.imports)
        self.is_JUnit5 = any(re.match(junit5_re, x.full_name) for x in self.imports)
        self.is_TestNG = any(re.match(testng_re, x.full_name) for x in self.imports)

        self.classes = []
        if not parse_only_test or (parse_only_test and any( [self.is_JUnit, self.is_JUnit5, self.is_TestNG ])):
            self.classes = [
                JClass(node)
                for node in
                tree_search(self._tree,
                            lambda n: isinstance(n, jtree.ClassDeclaration))
            ]
        self.functions = [
            JFunction(node)
            for node in
            tree_search(self._tree,
                        lambda n: isinstance(n, jtree.MethodDeclaration),
                        lambda n: not isinstance(n,jtree.ClassDeclaration))
        ]
        
        
    def __repr__(self):
        return self.path.name
    
    def print_src(self):
        for line in self.path.read_text().splitlines():
            if line[:2] not in ('/*', ' *', '*/'):
                print(line)
                
                
class JNode:
    
    def get_length(self):
        positions = []
        for n in tree_search(self._tree, lambda x, depth=0: x):
            pos = getattr(n.position, 'line', 0) if hasattr(n, 'position') else 0
            positions.append(pos)
        unique_pos = list(set(positions))
        if 0 in unique_pos: return len(unique_pos) - 1
        return len(unique_pos)


class JImport:
    
    def __init__(self, tree):
        self.full_name = tree.path
        self.name = tree.path.rsplit('.', 1)[-1]
        self.name_norm = normalize(self.name)
        
    def __repr__(self):
        return self.full_name
        

class JClass(JNode):
    
    def __init__(self, tree, package=None):
        self.package = package
        self._tree = tree
        self.name = tree.name
        self.name_norm = normalize(self.name)
        self.methods = [
            JFunction(node)
            for node in
            tree_search(self._tree,
                        lambda n: isinstance(n, jtree.MethodDeclaration))
        ]
    
    @property
    def extends(self):
        if self._tree.extends:
            if self._tree.extends.sub_type:
                return f'{self._tree.extends.name}.{self._tree.extends.sub_type.name}'
            return self._tree.extends.name
        return None
    
    @property
    def is_test(self):
        # TODO: is this correct check?
        return self.name.endswith('Test')
    
    @property
    def annotations(self):
        return [a.name for a in self._tree.annotations]
            
    def __repr__(self):
        if self.package:
            return f'{self.package}.{self._tree.name}'
        return self._tree.name
    

class JFunction(JNode):
    
    def __init__(self, tree):
        self.name = tree.name
        self.name_norm = normalize(self.name)
        self._tree = tree
        
    def __repr__(self):
        return self.name
    
    @property
    def asserts(self):
        return [n for _, n in self._tree.filter(jtree.MethodInvocation)
                if n.member.startswith('assert')]
    
    @property
    def throws(self):
        return bool(self._tree.throws)
    
    @property
    def variables(self):
        return [JVariable(jvar)
                for _, jvar in self._tree.filter(jtree.MemberReference)]
        
    @property
    def constructors(self):
        return [JConstructor(c)
                for _, c in self._tree.filter(jtree.ClassCreator)]
    
    @property
    def annotations(self):
        return [a.name for a in self._tree.annotations]
        
    @property
    def invocations(self):
        return [JInvocation(inv)
                for _, inv in self._tree.filter(jtree.MethodInvocation)]
    
    @property
    def is_test(self):
        #TODO: We should check for more https://junit.org/junit5/docs/current/user-guide/#writing-tests
        # return any(x.name =='Test' for x in self._tree.annotations)
        return any(x.name.lower() in annotations for x in self._tree.annotations)
    
    
class JConstructor:
    
    def __init__(self, tree):
        self.name = (f'{tree.type.name}.{tree.type.sub_type}'
                     if tree.type.sub_type
                     else tree.type.name)
        self._tree = tree
        
    def __repr__(self):
        return self.name
    

class JInvocation:
    
    def __init__(self, tree):
        self.name = tree.member
        self._tree = tree
        
    def __repr__(self):
        return self.name
        

class JVariable:
    
    def __init__(self, tree):
        self.name = tree.member
        self._tree = tree
        
    def __repr__(self):
        return self.name