function lab6q1(N, M, p)
    % Step 1
    rng('default'); % Reset random number generator
    data_matrix = rand(N, M) < p; % Creating the random array
    
    % Step 2: Histogram and estimated probability
    sum_columns = sum(data_matrix); % Summing the columns
    edges = -0.5:1:N+0.5; % Setting the bin edges
    figure(1); % Figure for histogram
    h = histogram(sum_columns, edges); % Making histogram
    title('Histogram of Successes'); % Title
    xlabel('Number of Successes (k)'); % X-axis
    ylabel('Frequency'); % Y-axis
    
    % Estimated probability
    estimatedk = h.Values / M;
    estimatedk
    

    % Step 3: Theoretical probabilities with bino_pk
    theoreticalk = bino_pk(N, p);
    theoreticalk
    
    % Average absolute error
    avg_abs_error = mean(abs(estimatedk - theoreticalk));
    disp(['Avg. Error: ', num2str(avg_abs_error)]);
    

    % Step 4
    figure(2);
    bar([estimatedk; theoreticalk]'); % Bar graph style
    title('Estimated vs. Theoretical Probabilities'); % Title
    xlabel('Number of Successes'); % X-axis
    ylabel('Probability'); % Y-Axis
    legend('Estimated trails', 'Theoretical'); % Legend
    set(gca, 'XTickLabel', -0.5:1:N+0.5); % Setting XTickLabel for spacing
end


