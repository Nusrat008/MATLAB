clc 
clear all 
close all 
[y, Fs]=audioread('introduction.mp3'); 
info=audioinfo('introduction.mp3');
left=y(:,1); 
right=y(:,2); 
%ploting original signal 
subplot(4,1,1) 
plot(y) 
title('Original Audio Signal') 
%analyze the noise signal
Y=awgn(y,5) 
subplot(412) 
plot(Y) 
title('Audio signal with noise') 
sound(y,Fs) 
pause(3) 
sound(Y,Fs) 
disp('enter the IIR filtrer design specifications'); 
[b,a]=butter(2,[.05,.9]) 
x_f_IIR=filter(b,a,y) 
subplot(413) 
plot(x_f_IIR) 
title('Recoverd signal after filter') 
pause(3) 
sound((x_f_IIR)*10^3,Fs)