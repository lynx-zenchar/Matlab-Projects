% changeArray.m
% Author: Matthew Eleazar
% Date: 2/9/2022

%% Clear as Beer
clear all
clc
%% Load + Size
ar= load ('arrayVals.txt');
new=ar;
[nrow,ncol]=size(ar);
%% Initialize
nMin=  20;

for i=1:nrow;
    for j=1:ncol;
        if ar(i,j) <20;
            new(i,j)=2*ar(i,j);
        end
    end
end

disp('Original Array')
disp(ar)
disp('New Array')
disp(new)
