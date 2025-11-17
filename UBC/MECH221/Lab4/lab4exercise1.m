clear all
close all
clc

g=9.81;
L=1;
tf=10;
fps=20;
theta0=pi/6;
omega0=0;
PS=30; %Size of pendulum

t=linspace(0,tf,tf*fps); %time vector
u0=[theta0;omega0]; %initial conditions

f1=@(t,u) [u(2); -(g/L)*u(1)]; %pendulum with small angle approx.
[T1 S1]=ode45(f1,t,u0); %solve ODE

f2=@(t,u) [u(2);-(g/L)*sin(u(1))]; %actual pendulum eq.
[T2 S2]=ode45(f2,t,u0); %solve ODE


for i=1:length(t)

    y1=-L*cos(S1(i));
    x1=L*sin(S1(i));

    y2=-L*cos(S2(i));
    x2=L*sin(S2(i));

    p=plot(x1,y1,'.r',x2,y2,'.b',[0 x1],[0 y1],'-r',[0 x2],[0 y2],'-b',0,0,'.b');
    p(1).MarkerSize=PS; %set pendulum mass size
    p(2).MarkerSize=PS;
    title(sprintf('Pendulum (Blue), Approximation (Red), t=%.3f s', T1(i)))
    xlabel('x')
    ylabel('y')
    xticks([-2 -1 0 1 2]);         %create x increments
    yticks([-2 -1 0 1 2]);         %create y increments
    xlim([-2*L 2*L]); %create x-axis limits
    ylim([-2*L 2*L]); %create y-axis limits
    grid on
    M(i)=getframe(gcf);   %store frames in F
end

movie(figure,M,1,fps)