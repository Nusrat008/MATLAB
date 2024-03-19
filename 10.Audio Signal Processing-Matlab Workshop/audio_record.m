%%audio recording
%info=audiodevinfo

%% audio recording
voice_1=audiorecorder;
disp('start recording')
recordblocking(voice_1,5);
disp('end')
play(voice_1);
%% data collection
num_data=getaudiodata(voice_1);
b=fft(num_data);
%% data visualisation
subplot(2,1,1);
plot(num_data)
subplot(2,1,2);
plot(abs(b))
filename='rec_1.wav'; %Fs (sampling frequency in Hz)
audiowrite(filename,num_data,8000);