%
% Euler Method Demo
clear all
clc

Npoints=50;
xmax =5*pi;
xmin=0;
%
% Define Arrays
x= linspace(xmin, xmax, Npoints);
y = zeros(1,Npoints);

% COmpute dx
dx=x(2)-x(1);
% Compute y(x)

for it = 2:Npoints
    dydx=cos(x(it-1));
    y(it)=y(it-1) + dydx*dx;
end
plot (x, y, 'r--', x ,sin(x), 'b-')