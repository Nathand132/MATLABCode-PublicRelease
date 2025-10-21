vb=20; %final velocity

t=4; %final time

w=310; %weight in pounds

a2=vb/t;

syms a1 T;

eq1=0==a2+2*a1;

eq2=((w/32.17)*a1)==w-2*T;

final=solve(eq1,eq2);

sprintf('%.0f lb',final.T)