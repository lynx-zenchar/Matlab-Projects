% evens.m
% Author: Matthew Eleazar
% Date: 2/20/2022
% This program will create a randaom integer between 1 and 50 and using a
% loop will count until 20 even numbers are generated. 
%
%% Clear all
clear all
clc
%% Initialize
rinteger = randi(50,1,1);
evenodd = rem(rinteger,2);
% 0 = even number
% 1 = odd number

evencount = 0;
oddcount = 0;
totalcount = 0;
%% Even Loop
while evencount<20
   rinteger = randi(50,1,1);
   totalcount= totalcount + 1;
 evenodd = rem(rinteger,2);
   if evenodd== 1 
    oddcount = oddcount+1;
   elseif evenodd ==0
       evencount = evencount + 1;
   end
end

disp(['The program generated ', num2str(evencount), ' even numbers and ', num2str(oddcount), ' odd numbers.' ])

