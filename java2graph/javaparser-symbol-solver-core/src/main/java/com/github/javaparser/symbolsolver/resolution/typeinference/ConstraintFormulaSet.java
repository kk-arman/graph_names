package com.github.javaparser.symbolsolver.resolution.typeinference;

import com.github.javaparser.symbolsolver.model.resolution.TypeSolver;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Federico Tomassetti
 */
public class ConstraintFormulaSet {
    private List<ConstraintFormula> constraintFormulas;

    public ConstraintFormulaSet withConstraint(ConstraintFormula constraintFormula) {
        ConstraintFormulaSet newInstance = new ConstraintFormulaSet();
        newInstance.constraintFormulas.addAll(this.constraintFormulas);
        newInstance.constraintFormulas.add(constraintFormula);
        return newInstance;
    }

    private static final ConstraintFormulaSet EMPTY = new ConstraintFormulaSet();

    public static ConstraintFormulaSet empty() {
        return EMPTY;
    }

    private ConstraintFormulaSet() {
        constraintFormulas = new LinkedList<>();
    }

    /**
     * Takes a compatibility assertion about an expression or type, called a constraint formula, and reduces it to a
     * set of bounds on inference variables. Often, a constraint formula reduces to other constraint formulas,
     * which must be recursively reduced. A procedure is followed to identify these additional constraint formulas and,
     * ultimately, to express via a bound set the conditions under which the choices for inferred types would render
     * each constraint formula true.
     */
    public BoundSet reduce(TypeSolver typeSolver) {
        List<ConstraintFormula> constraints = new LinkedList<>(constraintFormulas);
        BoundSet boundSet = BoundSet.empty();
        while (constraints.size() > 0) {
            ConstraintFormula constraintFormula = constraints.remove(0);
            ConstraintFormula.ReductionResult reductionResult = constraintFormula.reduce(boundSet);
            constraints.addAll(reductionResult.getConstraintFormulas());
            boundSet.incorporate(reductionResult.getBoundSet(), typeSolver);
        }
        return boundSet;
    }

    public boolean isEmpty() {
        return constraintFormulas.isEmpty();
    }
}
