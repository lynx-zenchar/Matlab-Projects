% coatTypeMain
% This program will call the coatTypeFunc.
% Author: Matthew Eleazar
% Date: 3/2/2022

clear all
clc


temp = input('What is the temperature (in °F)? ');
precip = input('Is there precipitaion in the forecast? (0= No, 1= Yes) ');
wind = input('Is it windy? (0= No, 1= Yes) ');

coatType = coatTypeFunc(temp,precip,wind);

disp(['I recommend that you wear a ', num2str(coatType), '.'])