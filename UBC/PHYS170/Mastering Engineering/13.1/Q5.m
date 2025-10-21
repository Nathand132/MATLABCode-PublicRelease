ma=8; %mass of cylinder A in kg

mb=6; %mass of cylinder B in kg

t=8; %final time question wants us to calculate

syms a1 a2 T;

eq1=mb*9.8-2*T==mb*a2;

eq2=ma*9.8-T==ma*a1;

eq3=a1+2*a2==0;

eqsol=solve(eq1,eq2,eq3);

final=eqsol.a1*t;

finalvpa=vpa(final);

sprintf('%.1f m/s', -finalvpa)