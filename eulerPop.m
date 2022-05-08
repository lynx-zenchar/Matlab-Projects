% eulerPop.m
% Author: Matthew Eleazar
% Date: 2/14/22

% dp/dt = G(Pmax-p(t)*p(t)

%% Clear
clear all
clc
%% Set parameters
tmax = 20;
tmin = 0;
pmax = 10000;
G = 0.00005;
Nt = 100;

%% Initialize
t = linspace(tmin, tmax, Nt);
p = zeros(1,Nt);
p(1) = 800;
dt = t(2) - t(1);
%% March through array
for it = 2:Nt
    dpdt = G*(pmax-p(it-1))*p(it-1);
    p(it) = p(it-1) + dpdt*dt;
end
plot(t,p,'b--')
xlabel('t')
ylabel('p(t)')
title('eulerPop.m')