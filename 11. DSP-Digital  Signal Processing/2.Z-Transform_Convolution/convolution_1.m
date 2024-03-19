clear all;
close all;
n1=0:1:15;
x=[4 3 2 1 -1 -2 -3 -5  9 7 3 5 -4 -8 -1 -1];
h=[-2 2 -2 2 -2 -2 -7 -6 -6 3 5 9 9 7 2 2];
n2=0:1:15;
X=[x, zeros(1, length(h))];
H=[h,zeros(1, length(x))];
Y=zeros(1,length(x)+length(h)-1);
for i=1:length(x)+length(h)-1
    for j=1:length(x)
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        end
    end
end
n3=min(n1)+min(n2);
 n4=max(n1)+max(n2);
r=n3:1:n4;
Y
W=conv(x,h)
subplot(411)
stem(n1,x,'lineWidth',3,'LineStyle','-','Marker','o','MarkerEdgecolor','blue');
title('x(n)')
subplot(412)
stem(n2,h,'lineWidth',3,'LineStyle','-','Marker','o','MarkerEdgecolor','green')
title('h(n)')
subplot(413)
stem(r,Y,'lineWidth',3,'LineStyle','-','Marker','o','MarkerEdgecolor','red')
title('System Response')
subplot(414)
stem(r,W,'lineWidth',3,'LineStyle','-','Marker','o','MarkerEdgecolor','red')
title('System Built-in-Response')