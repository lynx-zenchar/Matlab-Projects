clear all
clc

%
%
%
x1 = [5 4 1 11];
myavg1 = mymean2(x1);
matavg = mean(x1);
disp(['I computed ', num2str(myavg1), 'for the mean.'])
disp(['Matlab computed ', num2str (matavg), '.'])