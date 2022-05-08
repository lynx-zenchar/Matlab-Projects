% coatTypeFunc.m
% This program will make coatType from HW 3 ino its own function. 
% Author: Matthew Eleazar
% Date: 3/2/2022

% temp = input('What is the temperature (in °F)? ');
% precip = input('Is there precipitaion in the forecast? (0= No, 1= Yes) ');
% wind = input('Is it windy? (0= No, 1= Yes) ');

function coatType = coatTypeFunc(temp, precip, wind)

if (temp <=32) && (precip == 1) && (wind == 1)
    coatType = 'Two Layer Coat';
elseif (temp <=32) && (precip == 1) && (wind == 0)
    coatType = 'Two Layer Coat';
elseif (temp <=32) && (precip == 0) && (wind == 1)
    coatType = 'Two Layer Coat';
elseif (temp <=32) && (precip == 0) && (wind == 0)
    coatType = 'Winter Coat'


elseif (temp >32) && (precip == 1) && (wind == 1)
    coatType = 'Wind-Breaker'
elseif (temp >32) && (precip == 1) && (wind == 0)
    coatType = 'Rain-Coat'
elseif (temp >32) && (precip == 0) && (wind == 1)
    coatType = 'Wind-Breaker'
elseif (temp >32) && (precip == 0) && (wind == 0)
    coatType = 'Maybe Sweatshirt'

end