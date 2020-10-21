clear;
k = 1;
T = 2;
omega_0 = 2;

A = 0.24;
fi = -pi/2.5;

outsim = sim('cw2sim',20);

f1 = figure;
plot(outsim.simout);

transfer = tf([k],[T 1]);
nyquist(transfer);