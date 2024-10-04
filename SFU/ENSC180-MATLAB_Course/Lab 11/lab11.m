function lab11(cfg, N)
    % Define sample vector x
    x = linspace(0, 3, N);

    % Select function based on cfg
    if cfg == 1
        y = sin(x);
    elseif cfg == 2
        y = exp(-x) .* sin(x);
    end


    % Calculate the gradient using Matlab gradient() function
    matlabtrue = gradient(y, x);

    % Calculate forward difference and backward difference approximations
    forward_diff = diff(y)./diff(x);
    backward_diff = diff(y)./diff(x);
    
    % Call mygradient() function to calculate derivative
    my_grad = mygradient(y, x);

    % Plotting
    figure;
    hold on
    plot(x, y, 'b-', 'LineWidth', 2);
    plot(x, matlabtrue, 'r--', 'LineWidth', 1.5);
    legend('y', 'gradient()');
    xlabel('x');
    ylabel('y');
    grid on;

    figure;
    hold on
    plot(x(1:length(x)-1), forward_diff, 'g-', 'LineWidth', 1.5);
    plot(x(2:length(x)), backward_diff, 'm-.', 'LineWidth', 1.5);
    plot(x, matlabtrue, 'r-', 'LineWidth', 1.5);
    plot(x, my_grad, 'k--', 'LineWidth', 1.5);
    grid on;
    legend('Forward difference', 'Backward difference','gradient()', 'mygradient()');
    xlabel('x');
    ylabel('y');

    % Calculate mean absolute errors

    error_forward = mean(abs(matlabtrue(1:length(matlabtrue)-1) - forward_diff))
    error_backward = mean(abs(matlabtrue(2:length(matlabtrue)) - backward_diff))
    error_mygrad = mean(abs(matlabtrue - my_grad))
    error_vector = matlabtrue - my_grad
 

end
