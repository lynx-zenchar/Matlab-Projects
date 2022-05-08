%% RiverDataAnalysis.m
%  This program first uses an assignment to create an array that
%  has 28 rows and 3 columns. The data represents the river height of the
%  St. Joseph River in feet. The 28 rows correspond to different days in
%  February. The 3 columns correspond to three different years.

%  The program asks the user to select a specific day (1 through 28) and
%  outputs the min, max, mean, and standard deviation of the river height
%  for that day over the three years by displaying the results in the
%  Command Window.

%  Finally, the program asks the user to select a specific year and output
%  the min, max, mean, and standard deviation of the river height for all
%  the days in February of that year by displaying the results in the
%  Command Window.

% Author: Matthew Eleazar
% Date: 1/26/22
% INSERT COLLABORATORS: Prof. McWilliams office hours

% Clear memory
clear
% Clear Command Window
clc

%% Set Parameters
% Create the array of river height data (in feet) - more information is
% available in the header.
riverHeight = [8.52     6.37	5.89;
    10.27	6.05	5.68;
    9.19	6.19	6.04;
    7.54	5.77	5.91;
    8.06	6.18	6.2;
    8.31	5.93	6.1;
    8.95	5.99	5.88;
    8.99	5.92	5.74;
    8.77	6.11	5.97;
    8.55	5.49	5.92;
    8.31	5.74	5.69;
    8.32	5.74	5.67;
    8.21	5.84	5.38;
    8.13	6.18	5.02;
    7.92	5.77	5.15;
    8.09	6.49	5.36;
    7.91	7.63	5.67;
    7.49	7.41	5.67;
    7.36	6.91	5.07;
    7.4     9.06	5.45;
    7.12	14.74	5.79;
    7.27	17.33	5.74;
    7.11	16.53	5.7;
    7.19	15.58	5.67;
    7.81	15.14	5.72;
    7.61	14.71	5.68;
    7.21	14.27	5.36;
    7.04	13.8	5.69];
%% User Input
i = input('Pick a day from 1 to 28:    ');

j = input ('Pick a year from 1 to 3:    ');
%% Days
m = riverHeight(i,:);
disp(['Day #', num2str(i), ' has the following statistics: '])

q = min(m);
disp(['Min: ', num2str(q)])

a = max(m);
disp(['Max: ', num2str(a)])


z = mean(m);
disp(['Mean: ', num2str(z)])

w = std(m);
disp(['Std: ', num2str(w)])

%% Years
n = riverHeight(:,j);
disp('     ')
disp(['Year #', num2str(j), ' has the following statistics: '])

x = min(n);
disp(['Min: ', num2str(x)])

e = max(n);
disp(['Min: ', num2str(e)])

d = mean(n);
disp(['Min: ', num2str(d)])

c = std(n);
disp(['Min: ', num2str(c)])

