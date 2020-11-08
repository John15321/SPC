k_p=2;

[y] = sim("Reg_P");
plot(y);

k_i=0;

[z] = sim("Reg_PI");
plot(z);