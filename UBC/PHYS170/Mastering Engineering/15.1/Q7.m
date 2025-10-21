m=5;  %mass of both blocks

vA1=5;  %velocity of plate A

e=0.7;  %coefficient of restitution

k=500;  %spring constant


%% Backend

mA=m;

mB=m;

vA2=((mA-e*mB)/(mA+mB))*vA1;

vB2=((mA+e*mA)/(mA+mB))*vA1;

disp(sprintf('Part 1: (va,vb) = %.3f, %.3f', vA2, vB2))

Epb=(1/2)*mB*(vB2^2);

syms x

eq1=Epb==(1/2)*k*(x)^2;

final=solve(eq1);

disp(sprintf('Part 2: %.3fm',vpa(final(2,1))))