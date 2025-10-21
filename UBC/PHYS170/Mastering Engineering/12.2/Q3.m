trainvelo = 12; %Train velocity in m/s

radius = ((1+(15/10)^2)^(3/2))/(15/10^2);

accel = (trainvelo^2)/radius

sprintf('Answer = %f m/s^2', accel)