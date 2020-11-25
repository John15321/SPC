[sig,fs]=audioread('hall_imp.wav');
[js,js_fs]=audioread('janek_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));
%figure;
%plot(t,sig(:, 1));
%xlabel('Czas [s]');
%title('Hall Imp');

convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(convoluted)/fs)-(1/fs));
%figure;
%plot(cv_t, convoluted)
%xlabel('Czas [s]');
%title('Conv * Hall Imp');

audiowrite("janek_po_imp.wav",convoluted,fs);


%==============================================================

[sig,fs]=audioread('robot_imp.wav');
[js,js_fs]=audioread('borys_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));
%figure;
%plot(t,sig(:, 1));
%xlabel('Czas [s]');
%title('Hall Imp');

convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(convoluted)/fs)-(1/fs));
%figure;
%plot(cv_t, convoluted)
%xlabel('Czas [s]');
%title('Conv * Hall Imp');

audiowrite("borys_po_imp.wav",convoluted,fs);



%==============================================================


[sig,fs]=audioread('medium_dumping_cave.wav');
[js,js_fs]=audioread('denis_sample.wav');
t=0:1/fs:((length(sig)/fs)-(1/fs));
js_t=0:1/js_fs:((length(js)/js_fs)-(1/js_fs));
%figure;
%plot(t,sig(:, 1));
%xlabel('Czas [s]');
%title('Hall Imp');

convoluted = conv(sig(:, 1)/100, js(:, 1)*20);
cv_t=0:1/fs:((length(convoluted)/fs)-(1/fs));
%figure;
%plot(cv_t, convoluted)
%xlabel('Czas [s]');
%title('Conv * Hall Imp');

audiowrite("denis_po_imp.wav",convoluted,fs);
