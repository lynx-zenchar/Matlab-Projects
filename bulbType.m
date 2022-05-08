% bulbType.m
%
% Author: Matthew Eleazar
% Date: 2/4/2022

% This progrm
% Asks the user what type of room they want to install a new lightbulb in using 
% the input function. 
%
% Your room choices are: 'laundry, ' 'office, ' 'playroom, ' 'garage, ' 'bedroom,' 
% 'living room, ' 'dining room, ' 'entryway, ' 'kitchen, ' 'bathroom, ' 'craft, 
%
in1 = input('What type of room are you installing bulbs? ', 's' );

switch in1 
    % Refresh HD Bulbs
    case 'laundry'
        disp ('Refresh HD Bulbs')
    case 'office'
        disp ('Refresh HD Bulbs')
    case 'playroom'
        disp ('Refresh HD Bulbs')
    case 'garage'
        disp ('Refresh HD Bulbs')
        % Relax HD Bulbs
    case 'bedroom'
        disp ('Relax HD Bulbs')
    case 'living room'
        disp ('Relax HD Bulbs')
    case 'dining room'
        disp ('Relax HD Bulbs')
    case 'entryway'
        disp ('Relax HD Bulbs')
        % Reveal HD Bulbs
    case 'kitchen'
        disp ('Reveal HD Bulbs')
    case 'bathroom'
        disp ('Reveal HD Bulbs')
    case 'craft'
        disp ('Reveal HD Bulbs')
    otherwise 
        disp('I do not have a suggestion for that room.')
end 