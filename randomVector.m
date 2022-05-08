% randomVector.m
%
% Author: Matthew Eleazar
% Date: 2/4/2022
%
% This program will create a vector of size 1 x 15 with random integers between 1 and 100 using a for loop. 
%
% Collaborated with: Annamarie Todd
% Date:  Feb 4, 2022

%% Clear all
clear all
clc

%% Parameters
Nx = 10;
%% For Loop

for ix = 1:1:100
	vect = randi (ix, 1, Nx);
end

disp(vect)
    