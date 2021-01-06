clear all;
close all;

K = tf([1], [1 1])^3;
K_d = c2d(K, 0.1);


[K_d_num, K_d_den, K_d_st] = tfdata(K_d,  'v');
[K_num, K_den] = tfdata(K,  'v');



sim("cw4.slx");
