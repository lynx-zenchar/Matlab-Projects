% testFactorial
% Author: Matthew Eleazar
2
clear all
clc

N = input('Type a number to factorialize. ');

u = factorial(N);

v = myFactorial(N);

disp(u)
disp(v)

if u == v
    disp(['myFactorial.m and factorial both compute ', num2str(N), '!', ' to be ', num2str(v), '.'])
end