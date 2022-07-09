from ypstruct import structure
import numpy as np


# function to run the genetic algorithm
def run(problem, params):
    # problem information
    costfunc = problem.costfunc
    nvar = problem.nvar
    varmin = problem.varmin
    varmax = problem.varmax

    # parameters
    maxit = params.maxit
    npop = params.npop

    # empty individual template
    empty_individual = structure()
    empty_individual.position = None
    empty_individual.cost = None

    # initial population
    pop = empty_individual.repeat(npop)
    for i in range(0, npop):
        pop[i].position = np.random.uniform(varmin, varmax, nvar)
        pop[i].cost = costfunc(pop[i].position)

    # output
    out = structure()
    out.pop = pop
    return out

print(0)
