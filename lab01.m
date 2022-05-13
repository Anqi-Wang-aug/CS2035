% Plotting Functions in MATLAB
 
% Anqi Wang
% 251017118

% Create set of 1001 points between -pi and pi for the x-axis

x = linspace(-pi, pi, 1001)

% Plot the sine function
plot(x, sin(x))
title('Plot of sin(x)')
xlabel('x')

% Create a new figure
figure

% Plot an elliptic function
plot(x,ellipj(x,0.1))
title('Plot of the Jacob Elliptic Function sn(x,k) with k=0.1')
xlabel('x')