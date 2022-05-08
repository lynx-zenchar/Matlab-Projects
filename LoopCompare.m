% LoopCompare.m
% Author: Matthew Eleazar
% Date: 2/20/2022
%% Clear all
clear all
clc
%% Initialize

Nvec = input('How many elements do you want for Nvec? ');

vect = randi(100,1,Nvec);

foravg = 0;
whileavg = 0;
ix2 = 1;
%% For
for ix = 1:Nvec
    foravg = vect(ix)/Nvec + foravg;
end

disp(['for loop avg= ' , num2str(foravg)])
%% While
while ix2 <= Nvec 
    whileavg = vect(ix2)/Nvec + whileavg;
    ix2 = ix2 + 1;

end 
disp(['while loop avg= ' , num2str(whileavg)])

%% Mean
mean = mean(vect);

disp(['mean= ' , num2str(mean)])
