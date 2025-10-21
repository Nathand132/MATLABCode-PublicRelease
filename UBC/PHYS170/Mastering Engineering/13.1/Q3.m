close all
clear all

angle = 30; %angle in degrees

uk = 0.21; %coefficient of friction

va = 2.5; %crates speed

distance=3; %distance from top of slide to bottom

mass = 20; %mass of each crate in kg

Ftan=9.8*mass*sind(angle);

Ffr=mass*9.8*cosd(angle)*uk;

Ftt=Ftan-Ffr;

accel=Ftt/mass;

final=sqrt(va^2+2*accel*distance);

sprintf('%.2f m/s', final)

