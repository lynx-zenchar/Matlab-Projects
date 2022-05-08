% eulerExample.m
% Author: Matthew Eleazar
% Date: 2/9/22
% Collaborated with Miles Laning

%% Clear as beer
clear all
clc
%% Variables
z = 20;
max = 4;
min = -4;
b = linspace(min,max, z);
dx = b(2) - b(1);

%% Array
x = zeros(z, 1);
x(1) = 16;

%% Euler
for i = 1:(z-1)
    x(i+1) = x(i) + (-3*b(i)^2+12)*dx;
end

%% line
x_exact = -1*b.^3 + 12.*b;

%% Plotting
plot(b,x,'k-', b, x_exact, 'r--')
xlabel('x')
ylabel('Value')
title('Euler Method vs. Actual Values')
grid on
legend('Approximation' , 'Exact', 'Location', 'eastoutside')