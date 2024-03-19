clear all;
close all;
clc;
N=input('Enter the value of N = ');
wc=2;
a=(N-1)/2;
eps=.001;
n=0:1:N-1 ;
hd=(sin((n-a+eps)*pi)-sin((n-a+eps)*wc))./((n-a+eps)*pi);
wr=boxcar(N);
hn=hd.*wr';
w=0:0.01:pi;
H=freqz(hn,1,w);
plot(w/pi, abs(H),'LineWidth', 4,'Marker', '.', 'Color', 'g');
xlabel('w/pi');
ylabel('Magnitude (dB)');
hold on

