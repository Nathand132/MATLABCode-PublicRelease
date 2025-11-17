close all
clear all
clc

%Values from problem
F0=1;
m=2;
k=4;
c=0.2;
B=5;
w=[0.5 1 2];
u0=[0;0];

%t values
t=0:0.01:40;

%create figure and properties
figure(1)
hold on
title('Approximation for Duffing equation')
xlabel('t')
ylabel('y')

%calculate values and add to plot
for j=1:length(w)
    f = @(t,u) [u(2); (F0*cos(w(j)*t)-c*u(2)-k*u(1)-B*(u(1))^3)/m];
    [T U]=ode45(f,t,u0);
    plot(T,U(:,1));
end

%add legend
legend('w=0.5','w=1','w=2')