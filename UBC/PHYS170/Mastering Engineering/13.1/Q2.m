close all
clear all

m=450; %mass of cart

v1=2; %initial velocity

t=3; %final time

A=3050; %constant infront of t^2

fun = @(x) ((A.*(x.^2))./m)-(8.*9.8)./17;

q = integral(fun,0,t)+v1;

sprintf('%.1f m/s', q)