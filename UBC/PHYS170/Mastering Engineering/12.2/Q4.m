tractorvelo = 5; %velocity of tractor

tractoraccel = 0.4; %acceleration of tractor

radius = 226.59; %don't change

taccel = (tractorvelo^2)/radius;

acceltot = sqrt((taccel^2)+(tractoraccel^2));

sprintf('Answer = %f m/s^2', acceltot)