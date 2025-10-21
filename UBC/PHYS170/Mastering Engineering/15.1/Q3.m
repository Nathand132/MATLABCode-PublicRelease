clear all
close all

mA=42;  %mass of block A in kg
mB=60;  %mass of block B in kg
stretch=2;  %length of the spring stretched in meters
k=180;  %spring constant k in N/m

%% Backend

syms vA vB

Etot=(1/2)*k*stretch^2;

eq1 = Etot == (1/2)*mA*(vA)^2+(1/2)*mB*(vB)^2;

eq2 = 0 == mA*vA - mB*vB;

final=solve([eq1 eq2]);

disp(sprintf('Part 1: va = %.2fm/s', abs(final.vA(1,1))))

disp(sprintf('Part 2: vb = %.2fm/s', abs(final.vB(1,1))))