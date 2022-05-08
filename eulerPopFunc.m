% eulerPop.m
% This program uses the Euler Method
% Author: Matthew Eleazar
% Collaborated with Annamarie Todd
% Date: 3/4/22

% dp/dt = G(Pmax-p(t)*p(t)

function eulerPopFunc(tmax, Nt, p_max, G, p_0)
%% Set Initial Parameters
% Range of t-values
tmin = 0;       % Years
tmax = 20;      % Years
% % Number of data points
% Nt = 100;
% % Coefficients
% G = 0.00005;    % 1 / People-Year
% p_max = 10000;  % People
%% Initialize Vectors
% Vector of t-values
t = linspace(tmin, tmax, Nt);
% Increment of approximation 
dt = t(2) - t(1);
% Vector of p-values
p = zeros(1, Nt);
% Initial condition for p
p(1) = p_0; 
%% Euler Method
for it = 1:Nt-1
    a = G * (p_max - p(it)) * p(it);
    p(it+1) = p(it) + a*dt;
end
%% Generate Plot
% Plot approximate solution (Euler Method)
plot(t, p, 'b--')
% Enhance plot with labels, etc
axis([tmin tmax min(p) max(p)])
xlabel('Time (Years)')
ylabel('Population (People)')
title('Plot of dp/dt = G*(p_m_a_x-p)*p')
grid on