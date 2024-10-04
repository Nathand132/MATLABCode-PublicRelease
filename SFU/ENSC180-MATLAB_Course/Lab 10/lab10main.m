%% Part 1

syms T a b c d Cp

% Define the symbolic equation
maineq = Cp == a+b*T+c*T^2+d*T^3

% Solve for T
symsol = solve(maineq,T)

% Substitute values
a=28.9;
b=-0.1571*10^-2;
c=0.8081*10^-5;
d=-2.873*10^-9;
Cp=30;

% Redefine equation with sub values
numsol = subs(symsol)

doublesol = double(numsol)

vpssol = vpa(numsol)

%% Part 2

clear all
close all

syms x a b c

integralexpression = a*x^2+b*x+c

integralsolve = int(integralexpression,x,3.5,24)

a = 1;
b = 2; 
c = 3;

substited_int = subs(integralsolve)
int_double = double(substited_int)

%% Part 3

clear all
close all

syms y x

y = cos(2*x)*(sin(x))

First_derivative = diff(y,1,x)
Second_derivative = diff(y,2,x)



%{
maineq =
 
Cp == d*T^3 + c*T^2 + b*T + a
 
 
symsol =
 
root(d*z^3 + c*z^2 + b*z + a - Cp, z, 1)
root(d*z^3 + c*z^2 + b*z + a - Cp, z, 2)
root(d*z^3 + c*z^2 + b*z + a - Cp, z, 3)
 
 
numsol =
 
root(z^3 - (976932954830581760*z^2)/347324387975283 + (316537077102430388224*z)/578873979958805 + 3324546003940230230441984/8683109699382075, z, 1)
root(z^3 - (976932954830581760*z^2)/347324387975283 + (316537077102430388224*z)/578873979958805 + 3324546003940230230441984/8683109699382075, z, 2)
root(z^3 - (976932954830581760*z^2)/347324387975283 + (316537077102430388224*z)/578873979958805 + 3324546003940230230441984/8683109699382075, z, 3)
 

doublesol =

   1.0e+03 *

   -0.2746
    0.5495
    2.5378

 
vpssol =
 
-274.56474139582861275011079292558
 549.47821866804235244125718677108
 2537.8258196299785624558928377681
 
 
integralexpression =
 
a*x^2 + b*x + c
 
 
integralsolve =
 
(110249*a)/24 + (2255*b)/8 + (41*c)/2
 
 
substited_int =
 
125255/24
 

int_double =

   5.2190e+03

 
y =
 
cos(2*x)*sin(x)
 
 
First_derivative =
 
cos(2*x)*cos(x) - 2*sin(2*x)*sin(x)
 
 
Second_derivative =
 
- 5*cos(2*x)*sin(x) - 4*sin(2*x)*cos(x)
%}
