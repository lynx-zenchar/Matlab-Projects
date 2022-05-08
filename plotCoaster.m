%% plotCoaster.m
% Uses the coasterF function to find the position and
% velocity on a roller coaster.  Plots the position, velocity,
% or both (depending on plotChoice).

%% Set Parameters

d = 0.05;   % Damping factor should be between 0.05 and 0.3
tmin = 0;   % Start time (seconds)
tmax = 60;  % End time (seconds)
Nt = 200;   % Number of points

doGrid = true;   % True = Grid on for plot or False = Grid off
plotChoice = 3;  % Determines what is shown in the figure and
                 % plots: 1-position, 2-velocity, or 3-both

%% Calculate Values

% Calculate the time points and then use coasterFunc to find the
% position (y) and velocity (v) at each time.

t = linspace(tmin, tmax, Nt);
[y, v] = coasterFunc(t, d);

%% Plot Position and/or Velocity

% Use a switch statement with the previously defined plotChoice to
% plot either position, velocity, or both in the figure window.

switch plotChoice
    case 1  % Plot the function (position) only
        plot(t, y)
        ylabel('Height (ft)')
    case 2  % Plot the derivative (velocity) only
        plot(t,v)
        ylabel('Velocity (mph)')
    case 3  % Plot both (position and velocity)
        plot(t, y, t, v, '--');
        ylabel('Height or Velocity')
        legend('Height (ft)', 'Velocity (mph)')
end

% Same x label for all 3 plots
xlabel('Time (sec)') 
                     
% Only adds a grid to the plot if doGrid = true
if doGrid      
    grid on
else
    grid off
end
