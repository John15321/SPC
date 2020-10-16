import mpmath as mp
import numpy as np
import matplotlib.pyplot as plt

def F(s):
    a = 1
    b = 2

    return 1 / (s*(s*s+a*s+b))

start = 0.01
end = 20
step = 0.1
no = (end-start)/step

t = np.linspace(start, end, int(no))

y=[]

for i in range(0, len(t)):
    y.append(mp.invertlaplace(F, t[i], method = 'dehoog'))

#print(t)
#print(y)

fig_reg1, axs_reg1 = plt.subplots()
axs_reg1.plot(t, y, color = 'black', alpha = 0.7)
axs_reg1.set_xlabel(r'$t$', fontsize = 30)
axs_reg1.set_ylabel(r'$y$', fontsize = 30)
axs_reg1.grid(True)

plt.show()