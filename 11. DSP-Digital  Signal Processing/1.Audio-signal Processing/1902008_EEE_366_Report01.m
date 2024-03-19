clear all;
close all;
clc
[y,Fs] = audioread('Nusrat_Papri.wav');%Random audio file
info = audioinfo('Nusrat_Papri.wav')       

%Time Domain Analysis
t = 0:(1/Fs):(info.Duration);
t = t(1:end-1);                  

% Compute the Fourier transform of the signal first 
Y = fft(y);
L = info.TotalSamples;
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;         
sound(y,Fs); 
keyboard

p = 4;  q=1; % q and p identify up sampling, and down sampling respectively
[y1,af1] = resample(y,p,q) ;
[y2,af2] = resample(y1,q,p); 
sound(y2,Fs); 
keyboard  %interpolate

%%% Time Domain Plot
subplot(3,1,1);
plot(t,y);
xlabel('Time'); 
ylabel('Audio Signal')
title('Audio input signal');

subplot(3,1,2);
plot(t,y2)
xlabel('Time'); 
ylabel('Reconstructed Audio Signal')
title('Reconstructed sound signal')
t1 = 0:(1/Fs):(info.Duration);
t1 = t1(1:end-1);
t2 = (0:(length(y1)-1))*p/(q*Fs);
subplot(3,1,3)
plot(t1(1:100),y(1:100,1),'-b*',t2(1:(100/p)+1),y1(1:100/p+1,1),'-ro')
title('Sampling Info')
legend('Original','Resampled', 'Location','South')
 