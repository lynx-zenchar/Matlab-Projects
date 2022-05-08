% BopIt.m

% This program will store the given caharacters into a character array and
% use a for loop to randomly display one of these strings into the command
% window nine times. 

% Author: Matthew Eleazar
% Date: 3/16/22

clear all
clc

bop = ["Flick It!", "Bop It", "Twist It!", "Shake It!", "Pull It!"];


disp(bop(randi(5,1)))

for ix = 1:9
    disp(bop(randi(5,1)))
end