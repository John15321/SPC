clear;

a = -2;
b = -1;

p = [1 a b];

p_roots = roots(p);

delta = p(2)^2 - 4*(p(1)*p(3));

outsim = sim('model.slx', 20);

f1 = figure;
plot(outsim.output);

%a = -2, b = -1, d > 0, niestabilny
%a = 4, b = 2, d > 0, stabilny
%a = -2, b = 10, d < 0, niestabilny
%a = 2, b = 4, d < 0, stabilny
%a = -2, b = 1, d = 0, niestabilny
%a = 2, b = 1, d = 0, stabilny