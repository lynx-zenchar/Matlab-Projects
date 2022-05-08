% plotDerivatives.m
% This program will plot the equations given in the Homework 2 pdf and plot
% them in a graph with legends and differing line quality and color. 
% Author: Matthew Eleazar
% Date: 1/26/22
% Collaborated with Hananiah Tangpuz and Devante Brooks
%% Clear all
clear all
clc
%% Functions
xVect = linspace(-3, 3, 200);
yVect1 = -1*xVect.^3 + 12*xVect;
yVect2 = -3*xVect.^2 + 12;
yVect3 = -6*xVect;
%% Plot Functions
plot(xVect, yVect1, 'k', xVect, yVect2, 'r--', xVect, yVect3, 'b:');
xlabel( 'x-axis')
ylabel('y-axis')
grid()
title('Number 3 Functions')

legend('Function', '1st Derivarive', '2nd Derivative')