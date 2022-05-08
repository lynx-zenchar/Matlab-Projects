% myReverse.m
% This program will reverse the order of a user-defined vector of numbers.
% Author: Matthew Eleazar
% Date: 3/2/2022

function i = myReverse(j)
N = length(j);

k = N;
for ix = 1:N
    i(ix) = j(k);
    k = k - 1;
end