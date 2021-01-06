clear all;
close all;


transy = [tf([1], [1 1])^3, tf([1], [2 3]), tf([1], [2 3 -2])];

i = 0;
for v = transy
    i = i+1;
    p=figure;
    hold on
    K_d = c2d(v, 0.1);
    [K_d_num, K_d_den, K_d_st] = tfdata(K_d,  'v');
    [K_num, K_den] = tfdata(v,  'v');
    out = sim("cw4.slx");
    plot(out.yc.Time, out.yc.Data)
    hold on;
    p.GraphicsSmoothing = 'off';
    scatter(out.yd.Time, out.yd.Data)
    hold on;
    legend("Continuous", "Discrete");
    grid on
    title("");
    saveas(p, "plot_"+i,"png");
    hold on;
end

% Funkcje 1, 2, 3 po kolei
%   From input 1 to output:
%             1
%   ---------------------
%   s^3 + 3 s^2 + 3 s + 1
%  
%   From input 2 to output:
%      1
%   -------
%   2 s + 3
%  
%   From input 3 to output:
%          1
%   ---------------
%   2 s^2 + 3 s - 2
%  
% Continuous-time transfer function.

% I ich postacie w z odpowiednio:
% K_d =
%  
%   0.0001547 z^2 + 0.000574 z + 0.0001331
%   --------------------------------------
%     z^3 - 2.715 z^2 + 2.456 z - 0.7408
%  
% Sample time: 0.1 seconds
% Discrete-time transfer function.
% 
% 
% K_d =
%  
%    0.04643
%   ----------
%   z - 0.8607
%  
% Sample time: 0.1 seconds
% Discrete-time transfer function.
% 
% 
% K_d =
%  
%   0.002382 z + 0.002265
%   ---------------------
%   z^2 - 1.87 z + 0.8607
%  
% Sample time: 0.1 seconds
% Discrete-time transfer function.


