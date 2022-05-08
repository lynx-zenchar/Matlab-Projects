% findMax.m
% This program will create a randomly generated 5 x 10 matrix which will
% then be used in myMaxFunc.m in displaying the value and location of the
% largest vaklue in the matrix. 

% Author: Matthew Eleazar 
% Date: 3/4/22
% Collaborated with Annamarie Todd
%% Clear  
clear all
clc

%% Matrix

m = randi(100,5,10);
[max, row, col] = myMaxFunc(m);
disp('Matrix: ')
disp(m)

disp(['The maximum value found in the random matrix was ', num2str(max), ' in row ', num2str(row), ' and column ', num2str(col), '.'])