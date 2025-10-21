clear all
close all

m=1.6;  %mass in megagrams (Mg)
theta=40;  %theta angle given in degrees
vAi=50;  %velocity that car A states he was going
dist=4;  %distance the car skids
uk=0.15;  %coefficient of friction

%% Backend

syms vBi vBf

theta=deg2rad(theta);

vAi=vAi/3.6;

m=m*1000;

vAf = sqrt(2*dist*9.8*uk);

eq1 = m*vAi == m*vAf*sin(theta) + m*vBf*cos(deg2rad(30));

eq2 = m*vBi == m*vAf*cos(theta) + m*vBf*sin(deg2rad(30));

final=solve([eq1 eq2]);

disp(sprintf('vb = %.2fm/s',vpa(final.vBi)))



