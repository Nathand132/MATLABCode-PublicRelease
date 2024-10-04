function mygrad = mygradient(y, x)

% My gradient():
y1 = [y(2), y(3 : end),   y(end)];
y2 = [y(1), y(1 : end-2), y(end-1)];
mydiffy = y1 - y2;

x1 = [x(2), x(3 : end),   x(end)];
x2 = [x(1), x(1 : end-2), x(end-1)];
mydiffx = x1 - x2;

mygrad = mydiffy ./ mydiffx;

end
