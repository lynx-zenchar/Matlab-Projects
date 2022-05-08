% snowfallData.m 
% This program displays snowfall data from a year and month defined by the
% user within the bounds year 1-4.
%
% Author: Matthew Eleazar
% Collaborated with Prof. McWilliams
clear all
clc

snowfall = [0.0, 0.0, 0.0, 0.0, 0.0, 32.4, 22.0, 29.6, 7.6, 1.5, 0.0,0.0; ...
    0.0, 0.0, 0.0, 0.0, 12.1, 0.9, 23.9, 7.3, 0.5, 1.0, 0.0, 0.0; ...
    0.0, 0.0, 0.0, 0.2, 6.8, 3.9, 9.6, 17.9, 3.0, 3.7, 0.0, 0.0; ...
    0.0, 0.0, 0.0, 0.0, 1.3, 15.4, 14.6, 20.4, 0.0, 0.7, 0.0, 0.0 ];



%% Introduction
disp('a displays All months year 2 - 3. b displays Oct to Apr all four years. c displays Oct to Dec Years 2 - 4.')
%% All months year 2 - 3
a = snowfall(2:3,:)
%% Oct to Apr all four years
b = snowfall(:,4:10)
%% Oct to Dec Years 2 - 4
c = snowfall(2:4,4:6)

%% User input
i = input('Select a year (1-4):  ');
j = input('Select a month (1-12), where 1 = July:  ');
%% User Output Month,Year
snowfall(i,j);
disp(['For Year ', num2str(i), ' and Month ', num2str(j), ', the snowfall was ', num2str(snowfall(i,j)), ' inches.'])

