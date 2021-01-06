K_st = 0.5;

k_p = 1;
k_i = 1;

out=sim("cw4_zad34");
hold on;
plot(out.uchyb.Time,out.uchyb.Data);
hold on;