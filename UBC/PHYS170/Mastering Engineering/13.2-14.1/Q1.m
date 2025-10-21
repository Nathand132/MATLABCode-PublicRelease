clear all
close all

m=400;  %mass of car in kg

v=8;    %constant velocity of car

r=10;   %radius of the circle

d=12;   %descent distance


%% BACKEND


theta=atan(d/(2*pi*r));

final1=((m*((v*cos(theta))^2)/r)/1000);

final2=(9.8*m)/1000;

disp(sprintf('Fr = -%.2f, Ftheta = 0, Fz = %.2f', final1, final2))