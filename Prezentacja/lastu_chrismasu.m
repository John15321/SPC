[sig,fs]=audioread('hall_imp.wav');
[js,js_fs]=audioread('last_chr.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));

figure;
plot(js_t,js(:, 1));
xlabel('Czas [s]');
title('Oryginalne Last Christmas');
f=gcf;
exportgraphics(f,'lc.png', 'Resolution', 300)


j_convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(j_convoluted)/fs)-(1/fs));
figure;
plot(cv_t, j_convoluted)
xlabel('Czas [s]');
title('Last Christmas po splocie');
f=gcf;
exportgraphics(f,'lc_po_imp.png', 'Resolution', 300)

audiowrite("last_chr_po_imp.wav", j_convoluted,fs);