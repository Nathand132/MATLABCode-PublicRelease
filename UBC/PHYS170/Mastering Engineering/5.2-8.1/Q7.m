
close all;
clear all;

u=0.4; %Friction constant
wg=100; %Change: Weight of the girl
wb=50; %Change: Weight of the board
L=8; %Change: Length of board

A=[u (4*u-3)/5 0;
    1 (3*u+4)/5 wg+wb];

B=rref(A);

sprintf('Graph: y=%d(%d-x)+%d*%d and y=%0.4f*%d',wg,L,L/2,wb,B(1,3),L)

% If intersection has an x value > 0 (it should) then that is the point it
% slips