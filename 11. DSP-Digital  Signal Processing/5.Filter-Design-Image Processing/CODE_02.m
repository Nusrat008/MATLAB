clc; clear all; close all;
M = 21;
n = 0:M-1;
beta = [0, 1, 5];
figure;
for i = 1:length(beta)
    w = kaiser(M, beta(i));
    subplot(length(beta),2,2*i-1);
    plot(n,w);
    title(['Kaiser Window with \beta = ', num2str(beta(i))]);
    xlabel('Sample Number');
    ylabel('Amplitude');
    subplot(length(beta),2,2*i);
    W = abs(fft(w, 512));
    W_dB = 20*log10(W);
    plot(linspace(0,1,512),W_dB);
    title(['DFT Magnitude of Kaiser Window with \beta = ', num2str(beta(i))]);
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Magnitude (dB)');
end
