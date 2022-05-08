% myLinspace.m
% Author: Matthew Eleazar
% Date: 2/9/22
% This program will create a vector of
% linearly spaced values using a for loop. 
%% Clear
clear all
clc
%% For loop
xar = [0];
x = 0;
for ix = 0:4;
    x = x +12;
    xar(end+1) = x;
%    ix = ix + 12;

end



disp('The vector created using the for loop is:')
disp(xar)
%% Linspace
lin = linspace(0,60,6);
disp('The vector created using the linspace function is:')
disp(lin)