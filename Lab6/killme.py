#%%
from sympy import *
import numpy as np


def kryterium_Q(u1q: float, u2q: float) -> float:
    return (u1q - 1) ** 2 + (u2q - 2) ** 2


#%%
u1 = Symbol("u1")
u2 = Symbol("u2")
step = 0.01
radius_Q = 1

#%%
u1 = np.arange(-1 + step, 1, step)
u1_od_u2 = np.array([])

for each_u1 in u1:
    fKar = Poly(each_u1 ** 2 + u2 ** 2 - radius_Q, u2, domain="RR")
    sol = solve_poly_inequality(fKar, "<=")
    u_start = sol[0].start.evalf()
    u_end = sol[0].end.evalf()
    xd = np.append(u1_od_u2, np.arange(u_start, u_end, 0.01))

    for each_u2 in np.arange(u_start, u_end, step):
        if each_u2 == u_start and each_u1 == -1 + step:
            q_min = kryterium_Q(each_u1, each_u2)
        elif q_min > kryterium_Q(each_u1, each_u2):
            q_min = kryterium_Q(each_u1, each_u2)
            u1_min = each_u1
            u2_min = each_u2

print(q_min)
print(u1_min)
print(u2_min)


# %%


# %%
