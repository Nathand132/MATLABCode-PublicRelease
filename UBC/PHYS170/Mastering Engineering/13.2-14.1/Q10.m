clear all
close all

m=80; %mass of cylinder in kg

k=20; %spring constant

uns=2; %unstreched length

h=2.5; %final height

d=2; %distance from anchor point to middle (given in diagram)

%% BACKEND

SLend=sqrt(d^2+h^2);

SEstart=(1/2)*k*(d-uns)^2;

SEend=(1/2)*k*(SLend-uns)^2;

syms v

eq1=(m*9.8*h)+2*SEstart==((1/2)*m*v^2)+2*SEend;

final=vpa(solve(eq1));

disp(sprintf('v = %.2fm/s',final(2,1)))
