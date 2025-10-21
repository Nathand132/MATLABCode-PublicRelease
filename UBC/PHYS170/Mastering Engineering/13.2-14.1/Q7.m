clear all
close all

m=75; %mass of crate in kg

pointb=2; %distance from origin to b

pointa=6; %distance from point a to b

height=6; %height from origin to pulley

v=5.8; %speed when it's passing point b

%% BACKEND

slengths=sqrt((pointb+pointa)^2+height^2);

slengthf=sqrt((pointb)^2+height^2);

slengthd=abs(slengthf-slengths);

syms F

eq1=F*slengthd==(1/2)*m*v^2;

final=vpa(solve(eq1));

disp(sprintf('F = %.0fN',final))

