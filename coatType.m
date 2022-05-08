% coatType.m
%
% Author: Matthew Eleazar
% Date: 2/4/2022
% 
% This program will display the coat type the user should wear depending on
% user input temperature,  wind, and precipitation. 
%
%
%

% Clear like beer 
clear all
clc
%
temp = input('What is the temperature (in °F)? ');
precip = input('Is there precipitaion in the forecast? (0= No, 1= Yes) ');
wind = input('Is it windy? (0= No, 1= Yes) ');

if (temp <=32) && (precip == 1) && (wind == 1)
    disp('Two Layer Coat')
elseif (temp <=32) && (precip == 1) && (wind == 0)
    disp('Two Layer Coat')
elseif (temp <=32) && (precip == 0) && (wind == 1)
    disp('Two Layer Coat')
elseif (temp <=32) && (precip == 0) && (wind == 0)
    disp('Winter Coat')


elseif (temp >32) && (precip == 1) && (wind == 1)
    disp('Wind-Breaker')
elseif (temp >32) && (precip == 1) && (wind == 0)
    disp('Rain-Coat')
elseif (temp >32) && (precip == 0) && (wind == 1)
    disp('Wind-Breaker')
elseif (temp >32) && (precip == 0) && (wind == 0)
    disp('Maybe Sweatshirt')
    



end 


