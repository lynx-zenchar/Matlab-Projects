% countRandom
% Author: Matthew Eleazar
% Date: 2/14/22
% This program will use the randi function and while loop to generate random numbers and
% count until the number 5 has been generated 5 times. 

%% Clear all
clear all
clc

%% Parameters
maxno = 10;
searchno= 5;
timestop = 5;
iterCount = 0;
fcount=0;
%% While Loop
randno = randi(maxno,1,1);
while fcount < timestop 
    randno = randi(maxno,1,1);
    iterCount = iterCount + 1;
  if randno==5
      fcount = fcount + 1;
  end
end
disp(['It took ',num2str(iterCount) ' random numbers to find ', num2str(fcount) ' 5s.'])





% for ix = 1:1:10
% 	vect = randi (ix, 1, Nx);
% end
%
% disp(vect)


%     if __ ==5
% disp