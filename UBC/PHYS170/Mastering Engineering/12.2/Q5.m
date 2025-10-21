radius = 250; %given radius of circle

initialv = 2; %starting velocity of rider

rideraccel = 0.04; %acceleration of rider (dv/dt)

angle = 60; %in degrees

angle = angle*(pi/180); %don't change

final=sqrt((2*(initialv^2/2))+(rideraccel)*((radius*pi)/3)^2);

sprintf('Part 1 = %f ft/s', final)

sprintf('Part 2 = %f ft/s^2', (initialv^2)/radius)