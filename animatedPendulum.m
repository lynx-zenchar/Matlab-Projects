% animatedPendulum.m
% Author: Matthew Eleazar
% Date: 2/9/22

%% clear
clear all
clc
%%
pendul = load ("pendulum.txt");

[rows,cols]=size(pendul);
%% Parameters
xMin=-1;
xMax=1;
yMin=0;
yMax=2;

%%
Nx = 500;
t=pendul(:,1);
x=pendul(:,2);
y=pendul(:,3);

for ix = 1:1:rows
    plot(pendul(1:ix,2), pendul(1:ix, 3), 'b-', pendul(ix,2), pendul(ix,3), 'ko', [0 pendul(ix,2)], [1 pendul(ix,3)], 'k-', 0, 1, 'ko') 
xlabel('x position')
ylabel('y position')
axis([xMin, xMax, yMin, yMax])
axis square 
title("Current Time (s) = " , pendul(ix,1))
drawnow
end



% for ix = 1:1:rows
%     plot(pendul(1:ix,2), pendul(1:ix, 3), 'b-', pendul(ix,2), pendul(ix,3), 'ko', [0 pendul(ix,2)], [1 pendul(ix,3)], 'k-', 0, 1, 'ko') 
% xlabel('x position')
% ylabel('y position')
% axis([xMin, xMax, yMin, yMax])
% axis square 
% title("Current Time (s) = " , pendul(irow,1))
% drawnow
% end
