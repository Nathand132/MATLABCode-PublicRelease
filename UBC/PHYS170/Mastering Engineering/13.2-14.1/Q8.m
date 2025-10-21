clear all
close all

power=60; %power draw in kW

m=600; %mass of crate in kg

v=8; %constant velocity in m/s

%% BACKEND

syms e

eq1=(power*1000)*e==m*9.8*v;

disp(sprintf('e = %.3f',vpa(solve(eq1))))
