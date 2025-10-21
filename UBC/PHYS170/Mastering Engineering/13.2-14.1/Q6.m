close all
clear all

ma=9; %mass of cylinder A

mb=3; %mass of cylinder B

dist=2; %distance that cylinder has travelled from rest


%% BACKEND

syms v dhb dh %dh is the change in height of A, dhb is the change of height of b

eq1=dhb==2*dh;

eq2=(ma*9.8*dh)-(mb*9.8*dhb)==((1/2)*(mb)*(2*v)^2)+((1/2)*(ma)*(v^2));

final=solve([subs(eq1,dh,dist) subs(eq2,dh,dist)]);

disp(sprintf('va = %.2f m/s',vpa(final.v(2,1))))
