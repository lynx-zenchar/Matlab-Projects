% diffYear.m
% This program will use a for loop to produce a tabular output of the
% user's age in years from 2022 to 2045. 
% Author: Matthew Eleazar
% Date: 3/2/2022

clear all
clc

j = input('Input birth year. ');

% disp(i)

for ik = 2022:2045
    diffyear = yearCalc(j, ik);
    disp(['In ', num2str(ik), ' I will turn ', num2str(diffyear), '.'])
end





