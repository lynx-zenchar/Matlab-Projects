% myMaxFunc
% This program will determine the location and value of the maximum number
% within a matrix.
% Author: Matthew Eleazar
% Collaborated with Annamarie Todd
% Date: 3/4/22

function [max, row, col] = myMaxFunc(m)
[nrow, ncol] = size(m);
max = m(1,1);
row = 1;
col = 1;

for icol = 1:ncol
    for irow = 1:nrow
        if m(irow, icol) > max
            max = m(irow, icol);
            row = irow;
            col = icol;
        end
    end
end