import re


re1 = re.compile('(.)([A-Z][a-z]+)')
re2 = re.compile('([a-z0-9])([A-Z])')


def split_to_tokens(name: str):

    s1 = re1.sub(r'\1_\2', name)
    s2 = re2.sub(r'\1_\2', s1).lower()
    result = [st for st in s2.split('_') if st != ''] 
    print(name, result)
    return result


def normalize_camel_case(name):
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


def tokenize(method_name):
    result = normalize_camel_case(method_name)
    result.replace('_', ' ') 
    pattern = r'[^a-zA-Z ]' #only letters and spaces
    result = re.sub(pattern, '', result)
    return result.split()