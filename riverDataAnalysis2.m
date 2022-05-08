% riverDataAnalysis2.m
%
% Author: Matthew Eleazar
% Collaborated with Toby Bradshaw
% Date: 2/4/2022
%
% This program displays the yearly average of user inputted year of river
% height in the month of February and plots the average river height for
% all three years in a graph. 
%
%
%

clear all
clc

load riverHeightData.txt

rhd = riverHeightData;


[row,col] = size(rhd);

yr = input('Choose a year from 1,2,3. ');

sumYear = 0;
%% Mean for one year for loop
for i = 1:1:28
    sumYear=sumYear+rhd(i,yr);
end
averageYear = sumYear/28;
disp(['The average river height for year ', num2str(yr), ' is ', num2str(averageYear)]);

%% Mean for all years for loop
x = linspace(1,28);
everyAverage = zeros(1,28);

for u = 1:1:28
   everyAverage(u,1) = mean(rhd(u,1:3));
end


plot(x(1:28), everyAverage(1:end,1),'bo--')
title('Average River Height for February')

xlabel('Day in February Number')
ylabel('Average River Height (R)')



