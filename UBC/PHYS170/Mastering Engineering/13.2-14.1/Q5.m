clear all
close all

Constant=(4/9); %fraction infront of gr in equation given


%% BACKEND

syms v a h r m

g=9.8;

vi=sqrt(Constant*g*r);

TE=(1/2)*m*vi^2+m*g*r;

eq2=h==r*sind(90-a);

eq3=TE==m*g*h+(1/2)*m*v^2;

eq4=(m*v^2)/r==m*g*sind(90-a);

final=solve([eq2 eq3 eq4],[a v h]);

disp(sprintf('theta = %.1f degrees',final.a(1,1)));