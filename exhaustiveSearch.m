%% exhaustiveSearch.m
% This program plots a cubic polynomial and the first and second
% derivative. This can be used to determine when plots are
% increasing/decreasing, identify local maximum/minimums and inflection
% points!

% Author: Matthew Eleazar
% Collaborated with Toby Bradshaw
% Date: 2/16/22

% Clear the Workspace
clear 
% Clear the Command Window
clc

%% Set Parameters
% First, create the t vector from -4 to 4 with 200 points.
xmin = -4;
xmax = 4;
Nx = 51;
x = linspace(xmin,xmax,Nx);

% Next, set the coefficients of the cubic function
a = -1;
b = 0;
c = 12;
d = 0;

%% Calculations 
% First, compute the y equation for the cubic polynomial
y = a*x.^3+b*x.^2+c*x+d;

%% Plotting 
% First, plot the lines. The function is a black solid line, the first
% derivative is a red dashed line and the second derivative is a blue
% dashed dotted line.
plot(x,y,'k-')
hold on

% Add figure title and axis labels
title('Cubic Polynomial')
xlabel('x')
ylabel('Value')

% Add grid
grid on

%% Exhaustive Search
for it = 1:Nx-1
    if (y(it)*y(it+1)) < 0
        plot(x(it), y(it), 'bo', x(it+1), y(it+1), 'bo')
        disp(['Found a root between x= ', num2str(x(it)), ' and x= ', num2str(x(it+1))])
    elseif y(it) == 0
        plot(x(it), y(it), 'bo')
        disp(['Found a root at x= ', num2str(x(it))])
    end

end


% Turn the hold to off so if you plot a new graph, it doesn't add to the
% previous values. 
hold off


%% Observations

% Once Nx has been changed to 201 from 51, the gap between the two pairs of
% points that estimated where the root was in the x axis got reduced
% significantly. This reduction in the size of the gap has probably made
% the estimate more accurate and precise. 