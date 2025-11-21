clear all
close all
clc

time=0:0.01:43;
m=0.004;
g=9.81;
l=0.35;
b=0.000167;

Tae=table2array(readtable('Data from Tracker - D6.csv'));

func= @(t,u) [u(2); -g/l*u(1)-b/m*u(2)];

u0=[0.05948381;0];

[T U]=ode45(func,time,u0);

plot(T,U(:,1),'b--');
hold on;
plot(Tae(:,1),Tae(:,2),'g--');
title('D6 ODE45 Estimation vs. Actual Data');
legend('Estimate', 'Actual');
xlabel('Time (t)');
ylabel('Amplitude (m)');