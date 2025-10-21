w=180; %weight of pilot in lbs

vc=1000; %constant velocity in ft/s

finalalt=10000; %altitude given in question in ft

a1=40; %constant term 1 of equation

a2=-6; %power in the exponent of 10 (10^a2)

a3=5000; %constant term of equation given

mass=180/32.17;

syms y x;

eq1=y==a1*10^a2*x^2+a3;

temp=(solve(subs(eq1,y,finalalt)));

xcord=temp(2,1);

deriv1=diff(a1*10^a2*x^2+a3);

deriv2=diff(a1*10^a2*x^2+a3,2);

radtemp=((1+(deriv1)^2)^(3/2))/deriv2;

radius=subs(radtemp,x,xcord);

Fc=(mass*vc^2)/radius;

Fw=180*cosd(atand(subs(deriv1,x,xcord)));

Ft=Fw+Fc;

sprintf('Part 1: %.0f lb',Ft)

sprintf('Part 2: %.0f lb', 180*sind(atand(subs(deriv1,x,xcord))))


