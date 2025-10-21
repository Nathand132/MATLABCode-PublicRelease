
close all;
clear all;

F1=360; %Change: F1 given

F2=240; %Change: F1 given

A=[3 0 0 2*F2;
    0 4 0 2*F1;
    1 1 1 F1+F2];

rref(A)