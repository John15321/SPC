k = -3;
T = 0;
omega_0 = 2;



k_ster = 2.3;
T_ster = 1;

outsim = sim('cw2sim',20);

f1 = figure;
plot(outsim.simout);