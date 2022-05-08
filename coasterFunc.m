function [pos, vel] = coasterFunc(t, d)
% [pos, vel] = coasterF(t, d)
%
% Calculates the y-position (in ft) and y-velocity (in miles/hr) 
% of a rider on a new rollar coaster. The input "d" is the damping factor
% and determines the number and height of oscillations.
% 
% Author: Instructors
% Date: 10/08/20

%% Performs Calculations

% Constants 
wn = 0.5;
wd = wn*sqrt(1 - d^2);
sigma = d*wn;

% "pos" is the funciton that calculates the positon in the y direction.
% It is dependent on the previously defined wn, wd, sigma, and t.
pos = 150*(1 - exp(-sigma*t).*(cos(wd*t) + (sigma/wd)*sin(wd*t)));

% "vel" is the funciton that calculates the velocity in the y direction. 
% It is dependent on the previously defined wn, wd, sigma, and t.
vel = 2000*(sigma*exp(-sigma*t).*((sigma^2/wd)*sin(wd*t)+wd*sin(wd*t)));
