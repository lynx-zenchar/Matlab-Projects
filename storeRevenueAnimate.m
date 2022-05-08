% storeRevenue.m
%
% Author: Matthew Eleazar
% Collaborated with: Toby Bradshaw
% Date: 2/7/2022
%
% This program will display and animate the plots of the graphs of the
% yearly revenues of Target and Walmart with their average yearly revenue
% and total average revenue for all the given years. 
%
%
clear all
clc
%% Load revenueData
load ('revenueData.txt')
%% Plot revenueData
r = revenueData;

%% Define variables
k = (r(:,2) + r(:,3))./2; % average revenue for both stores over all the years
Nt=20;
trevenue = (sum(r(:,2)) + sum(r(:,3)))/40; % Total average yearly revenue
totalave(1:Nt) = trevenue;

%% Animate plot
t=r(:,1); % years
y=r(:,2); % Target
y1=r(:,3); % walmart
y2=k; % average revenue
%
for it=1:Nt
    plot(t(1:it), y(1:it), 'ko') % Target
    hold on
    plot(t(1:it), y1(1:it), 'm^') % Walmart
    plot(t(1:it), y2(1:it), 'b--') % Average Yearly Revenue
    plot(t(1:it),totalave(1:it) , 'r-') % Total Average Revenue
    plot(t(it), y2(it), 'ro') % Red circle following Average Yearly Revenue
    plot(t(it), totalave(1:it), 'bo') % Blue Circle following Total Average Revenue
    axis([1999 2021 0 550])
    legend('Target Revenues', 'Walmart Revenues', 'Yearly Average Revenue', 'Total Average Revenue', 'Location','northwest');
    title('Superstore Revenue')
    xlabel('Year')
    ylabel ('Revenue  (in Billions of Dollars')
    hold off
    drawnow
end



