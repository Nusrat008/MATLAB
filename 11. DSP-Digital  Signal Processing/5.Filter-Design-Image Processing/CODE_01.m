N = 21;
n = 0:N-1;
Nfft = 512;
titles = {'Rect ';'Bartlett';'Hanning';'Hamming';'Blackman'};
windows = {rectwin(N);bartlett(N);hanning(N);hamming(N);blackman(N)};
figure (1)
for i = 1:5
window = windows {i};
plot (n, window ,'LineWidth' ,1.1);
hold on;
xlabel ('n'); 
ylabel ('w(n)'); 
grid on;
xlim ([-2 N+1]) ,
ylim ([0 1.2])
legend ( titles );
end
for i = 1:5
figure (i +1) ;
subplot (2 ,1 ,1);
window = windows {i};
stem (n, window ,'.'); 
title ( sprintf ('%s window ',titles {i}));
xlabel ('n'); 
ylabel ('w(n)'); 
grid on;
subplot (2 ,1 ,2);
dft = abs ( fftshift (fft(window , Nfft )));
magdB = 20* log10 (dft/max(dft));
plot ( linspace (-1,1, Nfft ),magdB );
title ( sprintf ('Magnitude response (dB) of %s window ',titles {i}));
grid on;
xlabel ('omega(pi)'); 
ylabel ('20logW(e^(i*omega )');
end