clear all
close all

wa=1;  %weight of ball A in lb
wb=10;  %weight of block B in lb
v=20;  %horizontal velocity in m/s
ti=0.06;  %time it takes for impact to occur
e=0.6;  %coefficient of restitution

%% Backend

mA=wa/32.17;

mB=wb/32.17;

vA2=((mA-e*mB)/(mA+mB))*v;

vB2=((mA+e*mA)/(mA+mB))*v;

impulse=mB*vB2;

final=impulse/ti;

disp(sprintf('F = %.1flb', final))