import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from ypstruct import structure


## cost function
def sphere(x):
    return sum(x**2)

##  problem definition
problem = structure()
problem.costfunc = sphere
problem.nvar = 5
problem.varmin = -10 ## lower bound
problem.varmax = 10 ## upper bound

#



