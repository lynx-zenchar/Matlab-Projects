% CompoundAnalysis.m
% 
% This program will display all compounds that have a melting point of
% higher than 300 deg C and a specific heat of vaporization greater than
% 25 kJ/mol.  
% 
% Author: Matthew Eleazar
% Date: 3/16/22

%% Clear
clear all
clc
%% 
load compoundFile.mat;

disp('Compounds with a melting point greater than 300 degrees Celcius')
for ix = 1:21 
    if compoundData{ix,3}(1) > 300
        disp([compoundData{ix,1}, ' -- ', num2str(compoundData{ix,3}(1)), ' deg. Celcius'])
    end
end

disp(' ')

disp('Compounds with a specific heat of vaporizationn less than to 25 kJ/mol')
for ix = 1:21 
    if compoundData{ix,4}(1) < 25
        disp([compoundData{ix,1}, ' -- ', num2str(compoundData{ix,4}(1)), ' kJ/mol'])
    end
end
