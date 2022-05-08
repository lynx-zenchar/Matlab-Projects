function sum = myFactorial (N)
%
% This function will give the factorial of a specified number N. 
% Author: Matthew Eleazar
%
%% Define Variables
sum=1;
%% Factorial
for i = 1:N
    sum=sum*i;
end