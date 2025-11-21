clear all
close all
clc

time=0:0.01:35;
m=80;
g=9.81;
l=3;
b=2.128;

Tae=table2array(readtable('Data from Tracker - Bendulum.csv'));

func= @(t,u) [u(2); -g/l*u(1)-b/m*u(2)];

u0=[-0.431;2.10E+00];

[T U]=ode45(func,time,u0);

plot(T,U(:,1),'b--');
hold on;
plot(Tae(:,1),Tae(:,2),'g--');
title('BENDULUM ODE45 Estimation vs. Actual Data');
legend('Estimate', 'Actual');
xlabel('Time (t)');
ylabel('Amplitude (m)');