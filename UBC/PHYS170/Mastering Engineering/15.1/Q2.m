clear all
close all

mt=12.5; %mass of toboggan in kg
mg=40; %mass of girl in kg
mb=45; %mass of boy in kg
vh=2; %velocity of boy relative to toboggan (v(b/t))
h=3.5; %height of hill

%% Backend

syms vt vb

mtot=mt+mg+mb;

vf = sqrt(2*9.8*h);

eq2 = vh == vt-vb;

eq3 = mtot*vf == (mt+mg)*vt + mb*vb;

final=solve([eq2,eq3]);

disp(sprintf('vt = %.2fm/s', final.vt))

