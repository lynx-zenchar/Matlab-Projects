% primeFinder.m
% Author: Matthew Eleazar
% Date: 2/9/22
%% Clear
clear all
clc
%% Parameters
Nx = 10;
%% For Loop

vect = randi (100, 10, 1);

pnumber=0;
vectar= zeros(1, pnumber);

for ix = 1:10
    if isprime(vect(ix))==1
        pnumber=pnumber+1;
        vectar(1,pnumber) =vect(ix);
    end
end

if pnumber > 0
    disp(['You found ', num2str(pnumber), ' prime(s).'])
    disp("The prime numbers found were: ")
    disp(vectar)
else 
    disp(['You found ', num2str(pnumber), ' prime(s).'])
    disp('There are no prime numbers to display since you did not generate any! Unlucky!')
end

