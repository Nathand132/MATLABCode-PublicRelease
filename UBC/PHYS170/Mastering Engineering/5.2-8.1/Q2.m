
close all;
clear all;

m=55; %Change: Mass of object given

A=[1 1 0 1 0 0;
    0 0 1 0 1 9.8*m;
    0 0 -1 0 -0.2 -0.6*m*9.8;
    0.2 0 0 0 0 0.1*m*9.8;
    -0.2 1 0 0.2 0 0];

rref(A)