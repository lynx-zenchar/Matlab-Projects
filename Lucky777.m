% Lucky777.m
% Author: Matthew Eleazar
% Collaborated with Toby Bradshaw
% Date: 2/16/22
% This program creates a vector of 3 random different numbers from 1 to 500
% and sum them together and keep generating 3 random numbers and summing
% them until the sum equals 777. 
% 
%
%% Clear Workspace
clear all
clc
%% Initialize
vect=0;
sumvect=0;
iCount=0;
%% Loops
for repeat=1:100
    while sumvect~=777
        vect = randi (500, 1, 3);
        sumvect = sum(vect);
        iCount = iCount+1;
    end
    sumvect = 0;
end

averageCount = iCount/100;

disp("The average number of tries to get a sum of 777 is " + round(averageCount) + ".")