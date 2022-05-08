%% plotGauss.m
%  This program will calculation and plot the gaussian function
%  and the derivative of the guassian fucntion. 

clear
clc

%% Set Initial Parameters

% Range of x-values
Nx = 200;
xmin = -5;
xmax = +5;

% Width of the curve
width = 1.2;

% Center of curve
x0 = 0;

% Options for Plot
iPlotType = 'Both';  % Options: Function, Derivative, Both
doGrid = true;

%% Perform Calculations

% Find x-values
x = linspace(xmin,xmax,Nx);

% Call user-defined function
[g, dgdx] = gauss(x,x0,width);

%% Plot Gaussian Function and the Derivative of the Guassian Function

switch iPlotType
    case 'Function'
        plot(x,g);
        ylabel('g(x)');
        
    case 'Derivative'
        plot(x,dgdx);
        ylabel('dg/dx')
        
    case 'Both'
        plot(x, g,...
        x, dgdx);
        ylabel('g(x) and dg/dx')
        legend('g(x)', 'dg/dx', 'Location', 'Northwest')
end

if doGrid
    grid on
else
    grid off
end