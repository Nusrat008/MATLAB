
t_u = 0:0.5:10;
u_t = ones(size(t_u));

t_e = 0:0.5:10;
e_t = exp(-t_e);
%using conv function
conv_result = conv(u_t, e_t);

t_conv = 0:0.5:(length(conv_result)-1)*0.5;
subplot(2,1,1);
stem(t_conv, conv_result,'filled');
title('Convolution Result (u(t) * e(t))');
xlabel('Time');
ylabel('Amplitude');

k = length(u_t);
l= length(e_t);
u = [u_t,zeros(1,k)];
e = [e_t,zeros(1,l)];
%using maual method
for i = 1:k+l-1
 y(i) = 0;
 for j = 1:k
     if(i-j+1>0)
         y(i) = y(i) + u(j)*e(i-j+1);
     else
     end
 end
end
subplot(2,1,2);
stem(y,'filled');
