clear all
clc

xmin = 1;
xmax = 10;
nopoints = 30;

x = linspace(xmin,xmax,nopoints);
y = sin(x);

while xmin ==1
for ix = 1:30
plot(x(ix),y(ix), 'ro', x(1:ix), y(1:ix), 'k-')
axis([xmin, xmax, -5, 5])
drawnow
end 
end