%% changeArray.m
% This program creates a random 2D array of integers ranging from 1 to 100.
% Then, it checks each value against a certain value (nMin); if the list value
% is smaller, the program updates the value of this element to be twice the
% original value. The program also reports back the number of elements that
% were less than nMin.
clear all
clc
%% Set parameters
% Set the value (nMin) that the program will use to decide if the element
% value will be doubled.
nMin = 20;
% Set size of the array
nrows = 5;
ncols = 10;
%% Create random array
% Preallocate a 5x10 array.
M = zeros(nrows, ncols);
% Fill the array with random numbers ranging from 1 to 100.
for irow = 1:nrows
    for icol = 1:ncols
    2 M(irow, icol) = randi([1, 100]);
    end
end
%% Check Values
% Initialize the variable used to count the number of values below nMin.
minCount = 0;
% Use a nested FOR loop to cycle through each row and each column.
for irow = 1:nrows
    for icol = 1:ncols
         % If the current element is less than the nMin, update value
        if M(irow,icol) < nMin
             % Update array value
            M(irow, icol) = 2*M(irow, icol);

            % Increment the counter (minCount) that keeps track of the
            % number of values that are less than nMin.
            minCount = minCount + 1;
        end
    end
end
%% Display Results
% Determine the number of elements in the array by multipling the number of
% rows by the number of columns
numElements = nrows*ncols;
% Display the number of elements below nMin.
disp(['For ', num2str(numElements), ' elements in M array, '])
disp([num2str(minCount), ' elements were less than ',...
 num2str(nMin), '.'])