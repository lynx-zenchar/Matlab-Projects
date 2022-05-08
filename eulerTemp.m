% eulerTemp.m
% Author: Matthew Eleazar
% Date: 2/9/22
% This program will use the Euler method to approximate temperature.
% Collaborated with Miles Laning 

%% Clear as Beer
clear all
clc
%% Parameters
tmin = 0;
tmax = 200;
Nt = 200;
t = linspace(tmin,tmax,Nt);
%% Variables
dt = t(2)-t(1);
k = -0.03;
T = 70;
y(1) = 115;
%% Euler
for it = 2:Nt
    y(it) = (k * (y(it-1) - T) * dt + y(it-1));
end
%% Plotting
plot(t,y,'k-')
xlabel('Time')
ylabel('Temp')
title('Temperature as a Function of Time')
grid on
