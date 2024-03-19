clear, clc
% Real Data
height = [-2.06 -3 -4.06 -5.1 -5.99 -6 -6.09  -6.22 -6.42 -6.42 -6.5 -6.6 -6.67 -6.69 0.273 .437 .634 .685 .709 .721 .730 .737 .743 .746 .751 .755 .758 .762 .763 .766 .769 .772 .773 .776 .777 .78 .781 .783 .784 .787 .790 .792 .794 .796 .796 .8 .8 .802];
flow = [0 0 0 0 0 0 -.1 -.2 -0.2 -0.2 -.5  -6 -10 -14 0 0 0 0 1 1 2 2 2 3 3 4 4 4 4 5 6 6 6 6 7 7 8 8 9 9 9 10 10 11 11 12 12 13];
new_height = 0:0.5:6; % generating new height values used to test the model
%linear-------------------------
polyorder = 1; %linear
p1 = polyfit(height, flow, polyorder) % 1.order model
new_flow1 = polyval(p1,new_height); % We use the model to find new flow values
%quadratic-------------------------
polyorder = 2; %quadratic
p2 = polyfit(height, flow, polyorder) % 2.order model
new_flow2 = polyval(p2,new_height); % We use the model to find new flow values
%cubic-------------------------
polyorder = 3; %cubic
p3 = polyfit(height, flow, polyorder) % 3.order model
new_flow3 = polyval(p3,new_height); % We use the model to find new flow values
%Plotting
%We plot the original data together with the model found for comparison
plot(height, flow, 'o', new_height, new_flow1, new_height, new_flow2, new_height, new_flow3)
title('Model fitting')
xlabel('height')
ylabel('flow')
legend('real data', 'linear model', 'quadratic model', 'cubic model')