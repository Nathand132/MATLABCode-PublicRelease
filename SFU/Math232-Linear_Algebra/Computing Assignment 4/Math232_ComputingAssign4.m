clear all
close all

% Generate random data points. Only do this once then record the
% set the values

n_points = 15; % Number of points you want
% x = -5 + 10 * rand(n_points, 1); % Random x values in range [-5, 5]
% y = -5 + 10 * rand(n_points, 1);

% Set values, one itteration
x=[-0.9504;-3.2643;0.7518;1.0622;-2.8555;0.1993;4.8919;-0.1008;1.9487;-0.8858;-4.6522;-2.0717;3.0144;-1.5350;-4.1668];
y=[0.1111;-1.3317;2.3948;0.2474;3.0452;3.1691;-3.1053;-3.7631;3.2100;1.3790;-4.8388;3.9595;0.1538;0.4452;1.0644];
points=[x y];

% Setting which degrees to test for
degrees = [1, 5, 10];

% Setting up the error vector
errors = zeros(1, numel(degrees));

% for loop to test each itteration
for i = 1:numel(degrees)
    degree = degrees(i);
    A = ones(n_points, degree + 1);

    % for loop to set the A matrix in Ax=b
    for j = 2:(degree + 1)
        A(:, j) = x.^(j - 1);
    end

    % Finding the unique x vector in Ax=b using ((A'*A)^-1)*A'*b (y=b)
    x_ans=inv(A'*A)*A'*y;

    
    % Compute least squares error
    y_fit = A * x_ans;
    errors(i) = norm(y-y_fit);


    % Using step size of 0.01 to generate the points for polynomial
    polynomialpointsx = [];
    polynomialpointsy = [];
    for i=-5:0.01:5
        polynomialpointsx = [polynomialpointsx i];
        for j = 2:(degree + 1)
            pointspoly(j) = i.^(j - 1);
        end
        polynomialpointsy = [polynomialpointsy x_ans(1)+sum(sum(pointspoly*x_ans))];
    end

    % Ploting polynomial
    figure
    plot(polynomialpointsx,polynomialpointsy)
    ylim([-10 10]) % Setting limit so you can see the points
    hold on
    scatter(x,y,"filled","o") % Plotting the random points
    legend('Polynomial', 'Random Points')
end

% Determine the best fitting polynomial
[min_error, best_fit_index] = min(errors); % Finds which polynomial has least error and which degree it is
best_degree = degrees(best_fit_index);
for i=1:length(degrees)
    fprintf('Error of degree %d is %.4f.\n', degrees(i), errors(i)); % Display all errors
end
fprintf('The best fitting polynomial has degree %d with least squares error %.4f.\n', best_degree, min_error);
