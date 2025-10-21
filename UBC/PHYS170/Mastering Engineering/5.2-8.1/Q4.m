
close all;
clear all;

m=4.5;


A= [1 0 0 1 0 0 2.5*m*sind(45);
    0 1 0 0 1 0 0;
    0 0 1 0 0 0 2.5*m*cosd(45);
    0 0 0 0 -2 0 0.125*m*sind(60)*cosd(45);
    0 0 0 2 0 0 -0.5*m*(0.25*cosd(60)*cosd(45)-sind(45)-4*sind(45));
    0 0 0 0 0 -1 -0.125*m*sind(60)*sind(45)];

rref(A)
