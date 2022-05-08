% derivativeAnalysis.m
% 
% This program will load derivativeData.txt and ask user which row from the
% .txt file to display. The program will then display the value of f(x) and
% the properties of f'(x) and f''(x). 
%
%
%
%
% Author: Matthew Eleazae
% Date: 2/4/2022
clear all
clc

load derivativeData.txt

ddata = derivativeData;

[row,col] = size(ddata);

 ipt1 = input(['Choose a row between 1 and ', num2str(row), ' ']);

 disp(['The value of f(x) for row ', num2str(ipt1), ' is: ', num2str(ddata(ipt1,2))]) % f(x)

% f'(x)
 if ddata(ipt1,3) > 0
     disp ('f(x) - increasing')
 elseif ddata(ipt1,3) == 0
     disp("f'(x) - local max or min")
 elseif ddata(ipt1,3) < 0
     disp('f(x) - decreasing')
 end

% f''(x)
 if  ddata(ipt1,4) > 0
     disp ("f(x) - concave up; f'(x) - increasing")
 elseif ddata(ipt1,4) == 0
     disp(" f(x) - inflection point; f'(x) - local max or min")
 elseif ddata(ipt1,4) < 0
     disp("f(x) - concave down; f'(x) - decreasing")
 end 
%%

%  disp(['The value of f(x) for row', num2str(ipt1), 'is: ')
