clear all
close all

stepsize = [1, 4, 10, 20, 50, 100];
nonzero = [229888, 151721, 83960, 51711, 25431, 13152];
MSE = [0.083556, 1.3044, 6.2474, 16.8652, 58.9102, 144.9532];

figure;
plot(stepsize,nonzero,'Marker','o','LineStyle','-')
title('Stepsize vs num of nonzero')
xlabel('Stepsize')
ylabel('num of nonzero')

figure;
plot(stepsize, MSE,'Marker','o','LineStyle','-')
title('Stepsize vs MSE')
xlabel('Stepsize')
ylabel('MSE')