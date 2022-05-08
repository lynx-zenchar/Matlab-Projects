% candycreation.m
% Author: Matthew Eleazar
% Date: 3/5/22
%% Clear workspace
clear all
clc
%% array to store color shell and fillings
color_shell = {'brown', 'yellow', 'red', 'orange', 'green', 'blue'};
fillings = {'milk chocolate', 'dark chocolate', 'peanut butter', 'peanuts','caramel'};

%% structued array of 100 M&Ms, with fields color and fillings
s = struct('color','-','filling','-');
n = 100;
MandM = repmat(s,1,n);
for i = 1:n
    MandM(i).color = color_shell{randi([1,6])}; % use random - Uniform distribution to select color as well filling
    MandM(i).filling = fillings{randi([1,5])};
end

peanut = 0;
green_milk = 0;
for i = 1:n
    if MandM(i).color == "green" && MandM(i).filling == "milk chocolate"
        green_milk = green_milk + 1; % incremenet if green shell and milk chocolate filling found.
    end
    if MandM(i).filling == "peanut butter" % increment peanut if peanut butter filling found.
        peanut = peanut + 1;
    end
end

fprintf("There are %d M&Ms with Peanut Butter filling. \n",peanut);
fprintf("There are %d M&Ms with Green shells and Milk Chocolate filling.",green_milk);

% These results make sense because,
% For Peanut Butter Filling, 
% Expected Value = 100 * Probability(Peanut Butter Filling) = 100 * 1/5 =
% Expected Value = 20, so every time number of Peanut Butter filling is
% around 20.
% For Green Shell and Milk Chocolate Filling,
% Expected Value = 100 * Probability(Green + Milk Choc.)
% = 100 * (1/6) * (1/5)
% ~ 3.33, so the number of M&Ms of this type are around 3.33