
close all;
clear all;

M=50; %Change: Moment M given

P=160; %Change: Force P given


A=[0 0 1 0 1 0 0;
    1 0 0 1 0 0 0;
    0 1 0 0 0 1 P;
    0 0 0 -1 0 1 0;
    0 0 1 0 3 2 2*P-M*cosd(45);
    0 0 0 -2 -1 0 -M*sind(45)];

rref(A)