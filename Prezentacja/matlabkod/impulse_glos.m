% http://www.cksde.com/p_6_250.htm
[sig,fs]=audioread('hall_imp.wav');
[js,js_fs]=audioread('janek_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));

figure;
plot(js_t,js(:, 1));
xlabel('Czas [s]');
title('Orginalny glos Janek');
f=gcf;
exportgraphics(f,'./ploty/janek_glos.png', 'Resolution', 300)


figure;
plot(t,sig(:, 1));
xlabel('Czas [s]');
title('Odpowiedz imp duzej hali');
f=gcf;
exportgraphics(f,'./ploty/hall_imp.png', 'Resolution', 300)



j_convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(j_convoluted)/fs)-(1/fs));
figure;
plot(cv_t, j_convoluted)
xlabel('Czas [s]');
title('Conv * Hall Imp');
f=gcf;
exportgraphics(f,'./ploty/janek_po_imp.png', 'Resolution', 300)
audiowrite("janek_po_imp.wav", j_convoluted,fs);

%==============================================================

[sig,fs]=audioread('robot_imp.wav');
[js,js_fs]=audioread('borys_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));
%figure;
%plot(t,sig(:, 1));
%xlabel('Czas [s]');
%title('Hall Imp');

b_convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(b_convoluted)/fs)-(1/fs));
%figure;
%plot(cv_t, b_convoluted)
%xlabel('Czas [s]');
%title('Conv * Hall Imp');

audiowrite("borys_po_imp.wav", b_convoluted, fs);



%==============================================================


[sig,fs]=audioread('strange_box_imp.wav');
[js,js_fs]=audioread('denis_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));
%figure;
%plot(t,sig(:, 1));
%xlabel('Czas [s]');
%title('Hall Imp');

d_convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(d_convoluted)/fs)-(1/fs));
%figure;
%plot(cv_t, d_convoluted)
%xlabel('Czas [s]');
%title('Conv * Hall Imp');

audiowrite("denis_po_imp.wav", d_convoluted, fs);
