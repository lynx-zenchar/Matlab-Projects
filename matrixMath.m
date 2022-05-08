% matrixMath.m

% This program will perform the various operations listed in the Homework 2
% document for matrices A and B. 
% Author: Matthew Eleazar

clear all
clc
%% A and B matrices
A = [1 2 3; 4 5 6; 7 8 9];
B = [2 4 7; 3 5 4; 6 -1 1];
%% Operations

disp('A + B equals')
disp(A + B)

disp('A-B equals')
disp(A - B)

disp('A*10 equals')
disp(A * 10)

disp('A.*B equals')
disp(A.* B)

disp('A*B equals')
disp(A * B)

disp('B*A equals')
disp(B * A)