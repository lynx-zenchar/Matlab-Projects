% floodStage.m
%
% Author: Matthew Eleazar
% This program asks the user for the height of the St. 
% Joseph River at Niles in feet and returns a statement regarding the flood stage 
% based on the river height.
%
% Author: Matthew Eleazar
% Date: 2/4/2022


clear all
clc

h = input('What is the height of the river? ');

if h<9
    disp('The river height is within its normal limits. ');
elseif h>=9 && h<11
    disp('The flood stage is Active. ');
elseif h>=11 && h<14
    disp('The flood stage is Minor.');
elseif h>=14 && h<15
    disp('The flood stage is Moderate. ');
elseif h>=15
    disp('The flood stage is Major.');
else 
    disp('Error. ');
end 