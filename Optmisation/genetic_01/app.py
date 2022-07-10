import matplotlib.pyplot as plt
from ypstruct import structure
import ga


# Sphere Test Function
def sphere(x):
    return sum(x * 100) - 1000


# Problem Definition
problem = structure()
problem.costfunc = sphere
problem.nvar = 2
problem.varmin = [1, 1]
problem.varmax = [3, 3]

# GA Parameters
params = structure()
params.maxit = 100
params.npop = 50
params.beta = 1
params.pc = 1
params.gamma = 0.1
params.mu = 0.01
params.sigma = 0.1

print(0)
# Run GA
out = ga.run(problem, params)

print(0)
# Results
plt.plot(out.bestcost)
# plt.semilogy(out.bestcost)
plt.xlim(0, params.maxit)
plt.xlabel('Iterations')
plt.ylabel('Best Cost')
plt.title('Genetic Algorithm (GA)')
plt.grid(True)
plt.show()

print(0)
