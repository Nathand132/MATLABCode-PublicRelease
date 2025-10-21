w=150; %weight of man in pounds

us=0.5; %coefficient of static friction

v=27; %velocity in ft/s

d=8; %distance from axis

m=w/32.17;

syms ma theta Fn

Nx=Fn*sind(theta)
Ny=Fn*cosd(theta)

eq1=w==Ny-Fn*us*sind(theta)

Ffrx=Fn*us*cosd(theta)

eq2=(m*v^2)/d==Nx+Ffrx

final=solve(eq1,eq2)

sprintf('%.1f', final.theta(1,1))