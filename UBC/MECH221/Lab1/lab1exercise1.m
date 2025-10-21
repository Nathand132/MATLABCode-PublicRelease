%Lab 1 Exercise 1, plot the differential equation y'=-ae^(-y)sin(2*pi*t)

clear
close all
clc

a=0:0.2:2; %set all alpha values
t=linspace(0,2,100); %create t values to plot

y(:,:)=log(a(:)./(2*pi).*cos(2*pi*t)+exp(pi)-a(:)/(2*pi)); %create vector with all y values, each column is a different alpha value

plot(t,y,'b') %plot
xlabel('x')
ylabel('y')