%animsin

clear all
clc

T=2;
tmin = 0;
tmax = 2*T;
Nt = 300;


t=linspace(tmin,tmax, Nt);
y = sin(2*pi*t/T);

for it=1:Nt
    plot(t(it), y(it), 'ro', t(1:it), y(1:it), 'b')
  
    axis([tmin, tmax, -1.1, 1.1]);
    drawnow
end 