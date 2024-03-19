% Define the parameters of the sinusoidal function
Ts = 10*1000;
Hc=tf([1,0.2],[1, 0.4,9.04])
Hd=c2d(Hc,Ts)