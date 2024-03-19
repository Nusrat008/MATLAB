clc; %clear command window
clear all;

%% Audio recording
voice_1=audiorecorder; % create recording object
disp('start recording')
recordblocking(voice_1,5);
disp('end of recording')
play(voice_1);