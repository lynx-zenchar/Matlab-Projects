%% myLinspace.m
%  This program, myLinspace.m, uses a for loop to achieve the same 
%  functionality as the function linspace. That is, the program creates
%  a vector of linearly spaced values (i.e., the difference between two 
%  consecutive values is the same) for any given starting value, 
%  ending value, and number of points. 
%
%  The program then compares the vector created using the for loop to the
%  vector created using the linspace function. 

%  Matthew Eleazar

function x1 = myLinspaceFunc(startVal, endVal, Nx)

%% Set the parameters 
% % Set the starting and ending values
% startVal = 0; 
% endVal = 60; 
% 
% % Set the number of points
% Nx = 6;

%% Creating the vectors
% Initiaize the vector
x1 = zeros(1,Nx);

% Calculating the time step
dx = (endVal-startVal)/(Nx-1);

% Set the first value of the vector to be the starting value
x1(1) = startVal;

% Use a for loop to calucate the second through last point by adding dx
% each time.
for ix = 2:Nx
    x1(ix) = x1(ix-1)+dx;
end

% Use the linspace function to calculate the x vector.
x2 = linspace(0, 60, 6);

%% Displaying the Results
disp('The vector using the for loop is:')
disp(x1)
