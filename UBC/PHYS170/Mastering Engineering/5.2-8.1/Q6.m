
close all;
clear all;

u=0.2; %USE FRICTION CONSTANT OF A ONLY

m=0.5;

A=[cosd(60) -u-u*cosd(30) 0;
    -sind(60) 1-u*sind(30) m*9.8];


rref(A)