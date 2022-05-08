% DormAnalysis.m
% 
% This program will display all dorms completed after 2000, those that have
% a capacity less than 150, and all the dorms on West Quad. 
%
% Author: Matthew Eleazar
% Date: 3/16/22

%% Clear All
clear all
clc

load('dormFile.mat');

disp('Dorms completed after 2000:')
for ix = 1:39 
    if Dorm(ix).yearfounded > 2000
        disp([Dorm(ix).name, ' -- ', num2str(Dorm(ix).yearfounded)])
    end
end

disp(' ')
disp('Dorms that have a capacity less than 150:')
for ix = 1:39 
    if Dorm(ix).capacity < 150
        disp([Dorm(ix).name, ' -- ', num2str(Dorm(ix).capacity)])
    end
end

disp(' ')
disp('Dorms that are on West Quad:')
for ix = 1:39 
    if Dorm(ix).quad == "West"
        disp([Dorm(ix).name, ' -- ', num2str(Dorm(ix).quad)])
    end
end