k = 4;
T = -10;
omega_0 = 5;



k_ster = 2.3;
T_ster = 1;

outsim = sim('cw2sim',20);

f1 = figure;
plot(outsim.simout);