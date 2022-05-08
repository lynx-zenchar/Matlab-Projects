% snowfallMax.m
% Author: Matthew Eleazar
% Date: 2/16/22
% This program will load the snowfall data in South Bend, find the value of the maximum
% snowfall from October to April and determine which season number that
% maximum value occured in.
%
%% Clear workspace
clear all
clc
%% Load data
snowfall = load('snowfallData.txt');
%% Find max snow and season it occurs
for month = 4:10
   snowmax = max(snowfall(:,month));
   for szn = 1:22
       [szn,mth] = find(snowfall(:,month) == snowmax);
   end
    disp(['The maximum for Month ' num2str(month), ' is ', num2str(snowmax), ' in.', 'which occured in season ', num2str(szn), '.'])
end