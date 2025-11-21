clc
clear
close all

%given function
f=@(t,y) (y+1)*cos(t);

%analytical solution
ft=@(t) 2*exp(sin(t))-1;

%initial condition
y0=1;

%initialize error array
Err=zeros(6,1);

%initialize step array
steps=zeros(6,1);

%try all 6 k options
for k=1:6
    h=10^-k;
    t=0:h:1;
    [T,Y]=odeIEuler(f,t,y0); %calculate using improved euler
    steps(k)=log(h); %store log of step size
    Err(k)=log(abs(Y(end)-ft(T(end)))); %store error

end

plot(steps,Err); %plot the error vs. step size
title('Improved Eulers log(Error) vs log(Step Size)')
xlabel('log(Step Size)')
ylabel('log(Error)')
grid on

slope=(Err(end)-Err(1))/(steps(end)-steps(1))

%Slope calculated: 2.0264. Therefore the order is 2.

%Improved Eulers method for numerical analysis
function [T,Y] = odeIEuler(f,t,y0)

T=t;
Y=zeros(size(T));
Y(1)=y0;

for n=1:length(T)-1
    k1=f(T(n),Y(n));
    h=T(n+1)-T(n);
    Y(n+1)=Y(n)+(k1+f(T(n+1),Y(n)+h*k1))*h/2;
end
end