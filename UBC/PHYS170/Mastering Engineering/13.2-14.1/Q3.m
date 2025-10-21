angvel=4; %angular velocity given

m=1.5; %mass of roller in kg

thetasd=30; %theta you are looking for

k=30; %spring stiffness

us=0.1; %length of unstreched spring

%r=(a*cos(theta)+b)

a=0.2;

b=0.3;

%% BACKEND

syms theta N Ft

w=9.8*m;

thetas=thetasd*(pi/180);

eq1=(a*cos(theta)+b);

r=(subs(eq1,theta,thetas));

dr=(subs(diff(eq1),theta,thetas));

ddr=(subs(diff(eq1,2),theta,thetas));

at=(2*dr*angvel^2);

ar=(ddr-r)*angvel^2;

mat=m*at;

mar=m*ar;

Fs=(r-us)*k;

alpha=abs(atan(dr/r));

Nt=N*sin(alpha);

Nr=N*cos(alpha);

eq2=-Ft-Nt-(w*cos(thetas))==mat;

eq3=-Fs-Nr-(w*sin(thetas))==mar;

final=solve([eq2 eq3]);

final_normal=abs(vpa(final.N(1,1)));

final_rod=abs(vpa(final.Ft(1,1)));

disp(sprintf('Ncam=%.2f Frod=%.2f', final_normal, final_rod))



