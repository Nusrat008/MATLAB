clc; %clear command window
clear all;

%% Audio recording
voice_1=audiorecorder; % create recording object
disp('start recording')
recordblocking(voice_1,5);
disp('end of recording')
play(voice_1);

%% Data analysis 

num_data=getaudiodata(voice_1); %
plot(num_data)

%% Fourirer Analysis
figure;
f_data=fft(num_data);
plot(abs(f_data))
title('FFT of Audio data');
xlabel('Frequency');
ylabel('Amplitude');
