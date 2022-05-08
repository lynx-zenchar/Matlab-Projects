% animatedPoint.m
% Author: Matthew Eleazar
% Date: 2/9/22
% This program will 
%% Clear as a beer
clear all
clc
%% Parameters
Nt = 500; % speed

tf = 3; % final time

R = 1; % radius

tau = 5; % delay time

omega = 2*pi; % angular frequency


%% Domain Marching
tm = linspace(0,tf, Nt);
x = zeros(Nt, 1);
y = zeros(Nt, 1);
x1 = min(x(:)); 
x2 = min(x(:)); 
y1 = min(y(:)); 
y2 = min(y(:));


for ix = 1:Nt
    r(ix) = R*exp(-tm(ix)/tau) + (pi/100)*sin(30*pi*tm(ix));
    x(ix) = r(ix)*cos(omega * tm(ix));
    y(ix) = r(ix)*sin(omega * tm(ix));
end

for iplot = 1:Nt
    plot(x(1:iplot), y(1:iplot), 'b-', x(iplot), y(iplot), 'ro', x(iplot:Nt), y(iplot:Nt), 'k--')
    xlabel('x')
    ylabel('y')
    axis([-1, 1, -1, 1])
    axis square
    grid on
    drawnow
end 
