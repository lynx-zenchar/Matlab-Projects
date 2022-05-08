% sineDamping.m
%
% This program will plot the given functions in the Homework 2 document
% into a graph with varying colors and line syles. 
%
% Author: Matthew Eleazar
% Date: 1/26/22
% Collaborated with Hananiah Tangpuz and Devante Brooks
%% Clear All
clear all
clc
%% User Input
a = input('Enter A: ')
xi = input('Enter xi: ')
time = linspace(0,5,300);
%% Functions
ft= a*exp(-2*pi*time*xi);
gt = sin(2*pi*sqrt(1-xi^2)*time);
yt = ft.*gt;
%% Plot Functions
plot(time, ft, '--', time, gt, ':', time, yt, 'r', time, -ft,'')

legend('f(t) = a*exp(-2*pi*time*xi)', ...
    'g(t) = sin(2*pi*sqrt(1-xi^2)*time)', 'y(t) = ft.*gt');

% The difference between ξ = 0.3 and ξ= -0.3 is that the graph in ξ = 0.3
% peaks on the left whereas the graph on ξ = -0.3 peaks on the right. 


% A possible value of ξ is 0.5 so that the second positive peak is less
% than 20% of A. 