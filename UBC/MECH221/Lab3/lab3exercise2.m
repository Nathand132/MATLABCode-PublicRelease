close all
clear all
clc

%Values from problem
L=0.5*10^-3;
R=23.5;
C=0.2*10^-6;
time=linspace(0,5*10^-3,10000);
ontooff=0.5*10^-3; %time for it takes to go from on to off
u0=[0;0];

%Frequency and square wave generation
freq=1/(2*ontooff);
vt = @(t) 1.5*square(2*pi*t*freq)+1.5;

%function definition
f = @(t,u) [u(2); (vt(t)-u(1)-R*C*u(2))/(L*C)];

%use ode45 to solve
[T U] = ode45(f,time,u0);

hold on;
grid on;
title('Vc(t) and V(t) Approximated with ode45');
xlabel('Time(s)');
ylabel('Voltage(V)');

plot(T,U(:,1),T,vt(time));

legend('Vc(t)', 'V(t)');