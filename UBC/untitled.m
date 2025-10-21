b=1.3;
h=1.5;
r=15;
v=20;
u=0.4;

a=(v^2)/r;

g=9.8

syms N theta m

eq1 = u*N == m*g*sin(theta)-m*a*cos(theta)

eq2 = N == m*a*sin(theta) + m*g*cos(theta)

%eq2=(u/(g*sin(theta)-a*(cos(theta))))==1/((a*sin(theta))+g*cos(theta))

eq3 = 1.3*N+1.5*m*g*sin(theta)+1.5*m*a*cos(theta)+1.3*m*a*sin(theta)==1.3*m*g*cos(theta)

final=solve([eq1 eq2 eq3])

radtodeg(vpa(final.theta))

