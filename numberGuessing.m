% numberGuessing.m
% Author: Matthew Eleazar
% Date: 2/16/21
% This program will create a vector of 6 random numbers between 1 and 100
% and have MATLAB choose one number from that vector, then ask the user to
% guess what that number is.
% 
%% Clear all
clear all
clc

%% Initialize/ generate random no.
vect = randi (100, 1, 6); 
randno = randi(6,1,1);
vectselect = vect(randno);
guess = 0; % initialized guess value
disp(vect)
%% Ask user
while guess ~= vectselect
    guess = input('Guess what number did the program select? ');
    if guess ~= vectselect 
    disp('Try again.')
    end 
end

disp('Congratulations!')