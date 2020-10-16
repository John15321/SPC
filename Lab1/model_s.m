clear;

a = 2;
b = 1;

p = [1 a b];

a_roots = roots(p);

delta = p(2)^2 - 4*(p(1)*p(3));

outsim = sim('model.slx', 20);

f1 = figure;
plot(outsim.output);
