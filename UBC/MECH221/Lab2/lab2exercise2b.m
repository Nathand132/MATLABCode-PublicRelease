clc
clear
close all

Q=1000;
R=5;
R0=35;
V=10000;
M0=0;
h=0.01;
tval=0:h:100;

for P=260:0.01:1000
    dM=@(t,M) Q*R*(sin((pi*t)/8))^2+R0*Q-(M/V)*(P+Q);
    [T,Y]=odeIEuler(dM,tval,M0);
    C=Y/V; %calculate concentration from the mass solution by dividing by volume
    if max(C)<30
        break
    end
end

fprintf('The Minimum P Value is Approximately: %f \n',P) 
%Calculated as 263.23 on my computer

plot(T,C)

%{
plot(T,C)
title('Improved Eulers Method for Concentration in Tank')
xlabel('Time (hr)')
ylabel('Concentration of Salt in Tank (g/L)')
%}

%Improved Eulers method for numerical analysis. Function must be in f(t,Y)
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