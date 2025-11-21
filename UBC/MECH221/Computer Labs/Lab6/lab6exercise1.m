clear all
close all
clc

m1 = 1;
m2 = 2;
S1 = [1,0];
S2 = [-1,0];
u0 = [0,5,2,0];
tspan = [0 10];
gsize=[-2.5 -2; 2.5 2];
G=4*pi^2;
k=10;

options = odeset('RelTol',1e-9,'AbsTol',1e-10);
[T,U] = ode45(@(t,u) odefun(t,u,m1,S1,m2,S2),tspan,u0,options);

for i=1:60:length(T)
    hold off
    plot(U(1:i,1),U(1:i,3));
    hold on
    grid on
    axis(gsize);
    plot(S1(1),S1(2),'*r','MarkerSize',m1*k);
    plot(S2(1),S2(2),'*r','MarkerSize',m2*k);
    title(sprintf('Trajectory of Planet t= %.1fyears',T(i)))
    M(k) = getframe(gcf);
end

movie(figure,M(k))

function dudt = odefun(t,u,m1,S1,m2,S2)
dudt = zeros(4,1);
dudt(1) = u(2);
dudt(2) = ( 4 * pi^2 * m1 * (S1(1)-u(1))/ ...
    ((( S1(1) - u(1) )^2 + ( S1(2) - u(3) )^2)^(3/2))) ...
    + (4 * pi^2* m2 * (S2(1) - u(1))/...
    ((( S2(1) - u(1) )^2 + (S1(2) - u(3))^2)^(3/2)));
dudt(3) = u(4);
dudt(4) = (4 * pi^2 * m1 *( S1(2) - u(3))/...
    (((S1(1) - u(1))^2 + ( S1(2) - u(3))^2)^(3/2))) ...
    + (4 * pi^2 * m2 *( S2(2) - u(3))/...
    (((S2(1) - u(1))^2 + (S2(2)-u(3))^2)^(3/2)));
end