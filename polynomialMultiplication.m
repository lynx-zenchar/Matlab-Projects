% polynomialMultiplication.m
% Author: Matthew Eleazar
% Collaborated with James Canady & Nicholas Palma
% Date: 2/16/22
% This program will find the coefficients of the product of the two
% functions f(x) and g(x) to produce h(x) with terms defined in the
% homework document. 
%

% h(x) = f(x)*g(x)
%% Clear
clear all
clc
%% Intialize, define coefficients of f(x) and g(x)
fx = [-6, 3, 1];
gx = [4, 1, 0];

hx = zeros(1,5);
%% Multiply f(x) and g(x)
for ifx = 1:3
    for igx = 1:3
        hcoef = fx(ifx)*gx(igx);
        hpos = (ifx + igx) - 1;
        hx(hpos) = hx(hpos) + hcoef;
    end
end

disp('The coefficients of the product are: ')
disp(hx)














