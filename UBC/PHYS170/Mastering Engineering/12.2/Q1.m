clear all
close all

xdistance = 15;
ydistance = -9;  %should be negative
angle = 60; %in degrees

syms v;

eq1 = ydistance == (sind(angle))*(xdistance/(cosd(angle))) - 16.085*(xdistance/(v*cosd(angle)))^2;

AnsPt1temp=vpasolve(eq1,v);

AnsPt1=AnsPt1temp(2,1);

AnsPt1=vpa(AnsPt1,3);

sprintf('Part 1 = %.1f ft/s', AnsPt1)

t=xdistance/(AnsPt1*cosd(angle));

yvel = (AnsPt1*sind(angle))-(32.17*t);

AnsPt2 = sqrt(yvel^2+(AnsPt1*cosd(angle))^2);

sprintf('Part 2 = %.1f ft/s', AnsPt2)

