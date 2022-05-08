% systemOfEquations.m
%
% This progam will solve for the variables w,x,y,z in the follow system of
% equations:
% −3𝑦+ 𝑤−36 = −5𝑧 
% 3𝑧+ 2𝑤−𝑥−18 = 0 
% 2𝑧+ 3𝑦= 1 
% 2𝑧+ 4𝑤−17 = 𝑥 
%
% Author: Matthew Eleazar
% Collaborated with Charles Pohl, TA

clear all
clc

A = [1 0 -3 5; ...
     2 -1 0 3; ...
     0 0 3 2; ...
     4 0 0 2];

b = [36;18;1;17];

u = b\A;

disp('The results are: ')
disp(['w = ', num2str(u(1))])
disp(['x = ', num2str(u(2))])
disp(['y = ', num2str(u(3))])
disp(['z = ', num2str(u(4))])