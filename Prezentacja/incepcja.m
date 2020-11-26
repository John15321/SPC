[sig,fs]=audioread('krotkie_lc.wav');
[js,js_fs]=audioread('krotkie_lc.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));

%figure;
%plot(js_t,js(:, 1));
%xlabel('Czas [s]');
%title('Oryginalne Last Christmas');
%f=gcf;
%exportgraphics(f,'lc.png', 'Resolution', 300)


j_convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(j_convoluted)/fs)-(1/fs));
figure;
plot(cv_t, j_convoluted)
xlabel('Czas [s]');
title('RAVE/HARDBASS');
f=gcf;
exportgraphics(f,'RAVE.png', 'Resolution', 300)

audiowrite("lc_incepcja.wav", j_convoluted,fs);