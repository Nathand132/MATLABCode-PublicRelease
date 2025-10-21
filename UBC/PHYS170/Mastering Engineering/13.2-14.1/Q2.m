clear all
close all

m=2;        %mass in kg

thetas=60;  %angle given in degrees

angvel=1.7; %given anglular velocity in rad/s

%% BACKEND

syms theta t

w=m*9.8;

thetasr=(thetas*pi)/180;

r=exp((thetas*pi)/180);

eq1=exp(theta);

diff(eq1);

mar=subs(m*((diff(eq1,2)-r)*angvel^2),theta,thetasr);

matheta=subs(m*(0+2*diff(eq1)*angvel^2),theta,thetasr);

alpha=vpa(subs(atan((diff(eq1))/r),theta,thetasr));

%    F        N
A=[sin(alpha) -cos(alpha) mar
  cos(alpha) sin(alpha) matheta];

B=rref(A);

finalf=vpa(B(1,3));

finaln=vpa(B(2,3));

disp(sprintf('F = %.1fN; N = %.1fN',finalf,finaln))