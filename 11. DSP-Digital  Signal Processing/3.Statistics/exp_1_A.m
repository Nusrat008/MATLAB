clc;
clear all; 
close all; 
%%ploting delta function
%%
n=0:1:3;% initializing sample no.
x=[4 2 -3 6]

clc;
clear all; 
close all; 
%%ploting delta function
%%
n=0:1:3;% initializing sample no.
x=[4 2 -3 6]

figure
stem(n,x,'LineWidth',6,'LineStyle','-','Marker','diamond','MarkerEdgeColor','red')
xlabel('sample no.n');
ylabel('x(n)');%ylabel
xlim([min(n)-2,max(n)+2]);
ylim([min(x)-3,max(x)+3]);
Colors=[% three colors for three data set 
   0.16 0.44 1.00;
    % 0, 0, 1;
    ];
legend('Discrete sequence')