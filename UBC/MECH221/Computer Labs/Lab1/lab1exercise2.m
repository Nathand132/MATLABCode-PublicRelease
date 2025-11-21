%Lab 2 Exercise 2 plot two more equations

clear
close all
clc

x=linspace(0,3,100); %create linspace

net=4*(1./(x.^12)-1./(x.^6)); %equations
repulse=4./(x.^12);
attrct=-4./(x.^6);

hold on
axis([0.5 3 -2 2])

title('Leonard-Jones Potential')
ylabel('$V_{\mathrm{LJ}} / \varepsilon$','Interpreter','latex')
xlabel('r/$\sigma$','Interpreter','latex')

plot(x,net,'black');
plot(x,repulse,'-.r');
plot(x,attrct, ':b');

plot([1.12246204831 1.12246204831 0], [-2 -1 -1], '--m')
legend('Net Energy', 'Repulsive Energy', 'Attractive Energy')

grid on

hold off