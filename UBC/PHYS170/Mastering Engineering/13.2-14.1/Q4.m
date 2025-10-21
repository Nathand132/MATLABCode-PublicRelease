angvel=4; %angular velocity (theta dot)

m=0.55; %mass of both collars combined

angdeg=45; %angle is degrees

a=1.6; %coefficient infront of cosine (r=a*cos(theta))

%% BACKEND

ang=deg2rad(angdeg);

w=m*9.8;

syms theta N Fc

eq1=a*cos(theta);

r=subs(eq1,theta,ang);

dr=subs(diff(eq1),theta,ang);

ddr=subs(diff(eq1,2),theta,ang);

ar=(ddr-r)*angvel^2;

mar=m*ar;

at=2*dr*angvel^2;

mat=m*at;

alpha=atan(dr/r);

Nr=N*cos(alpha);

Wr=w*sin(ang);

Nt=N*sin(alpha);

Wt=w*cos(ang);

eq2=-Nr-Wr==mar;

eq3=-Fc+Nt-Wt==mat;

final=solve([eq2 eq3]);

disp(sprintf('Part A: Force of circular rod on collar = %.1f N', vpa(final.N)));

disp(sprintf('Part B: Force of OA on collar = %.0f N', abs(vpa(final.Fc))));
