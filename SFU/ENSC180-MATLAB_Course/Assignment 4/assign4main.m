%% Q1
x = 2:6;
y = [65 67 75 71 68];

degrees = 1:4;
coefficients = cell(1, length(degrees));
polynomials = cell(1, length(degrees));

% For loop to find polynomials and symbolic expressions
for i = 1:length(degrees)
    coefficients{i} = polyfit(x, y, degrees(i));
    polynomials{i} = poly2sym(coefficients{i});
    disp(['Degree ' num2str(degrees(i))])
    coefficients{i}
    polynomials{i}
end

% Plot polynomials
tiledlayout(2, 2);

for i = 1:length(degrees)
    nexttile;
    degree = degrees(i);
    x_range = linspace(min(x), max(x), 100);
    y_estimate = polyval(coefficients{i}, x_range);
    plot(x, y, 'o', x_range, y_estimate);
    title(['Degree ' num2str(degree)]);
    legend('Original Data', 'Polynomial Estimate');
    
    % Calculate MSE
    y_predicted = polyval(coefficients{i}, x);
    mse = sum((y - y_predicted).^2)./length(y);
    disp(['MSE of degree ' num2str(degree) '= ' num2str(mse)]);
end

%% Q2
disp('Start of Q2')
syms x y;
eq1 = (x + 2)^2 + y^2 == 30;
eq2 = x + 4*y + 2*y^2 == 5;

% Solve equations
solutions = solve([eq1, eq2], [x, y]);
disp('x symbolic solutions')
disp(solutions.x)
disp('y symbolic solutions')
disp(solutions.y)

% Convert to numerical values
doublesolutions = double(struct2array(solutions));
xsolutions=doublesolutions(:,1)
ysolutions=doublesolutions(:,2)
numberofsolutions=length(xsolutions)

% Verify solutions
for i = 1:4
    x=xsolutions(i);
    y=ysolutions(i);
    syms x y
    eqcheck = [subs((x + 2)^2 + y^2,[x y], [xsolutions(i), ysolutions(i)]), subs(x + 4*y + 2*y^2,[x y], [xsolutions(i), ysolutions(i)])] % Subbing into only left side
    eqcheckdouble = double(eqcheck)
end


% Plot curves and solutions
figure;
fimplicit(eq1, [-8, 8, -8, 8], 'r--');
hold on;
fimplicit(eq2, [-8, 8, -8, 8], 'b-');
stem(doublesolutions(:,1), doublesolutions(:,2), 'fill');
title('Equations Plot');
xlabel('x');
ylabel('y');
legend('Equation 1', 'Equation 2', 'Solutions');
