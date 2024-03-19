clear all;
num =[1];

den = [2 1  4];

H = tf(num,den)

impulse(H)

figure(1)
subplot(121)
impulse(H)

subplot(122)
pzplot(H)
