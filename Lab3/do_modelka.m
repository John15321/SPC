k_p = 0.4;

[y] = sim("Reg_P");
plot(y);

% k_i = 1;
% 
% [z] = sim("Reg_PI");
% plot(z);