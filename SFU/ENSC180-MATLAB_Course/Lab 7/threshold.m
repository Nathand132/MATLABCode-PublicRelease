function threshold(T)
    % Load the handel signal
    load handel.mat;
    y = y(1:25600); % Using first 25600 signals

    % Plotting original signal
    figure;
    plot(y);
    title('Original Signal');

    % Playing original signal
    sound(y, Fs);
    pause(5);

    % Time domain thresholding and making y2
    y2 = y;
    y2(abs(y2) < T) = 0;
    MAE_y2 = mean(abs(y2 - y));
    fprintf('MAE for y2: %f\n', MAE_y2);

    % Plot the time domain processed signal (y2)
    figure;
    plot(y2);
    title(['Time Domain Processing with Threshold T = ', num2str(T)]);

    % Play the time domain processed signal
    sound(y2, Fs);
    pause(5);

    % DCT domain processing and making y3
    y3 = y;
    M = 64;
    numBlocks = length(y3) / M;
    C = dct(eye(M));

    % The loop for y3
    for i = 1:numBlocks
        Startblock = (i - 1) * M + 1; % Defining the start of block
        Endblock = i * M; % Defining the end of the block
        block = y3(Startblock:Endblock);
        z = C * block;
        z(abs(z) < T) = 0;
        y3(Startblock:Endblock) = C' * z;
    end

    % Calculate the MAE for y3
    mae_y3 = mean(abs(y3 - y));
    fprintf('MAE for y3: %f\n', mae_y3);

    % Plot the DCT domain processed signal (y3)
    figure;
    plot(y3);
    title(['DCT Domain Processing with Threshold T = ', num2str(T)]);

    % Play the DCT domain processed signal
    sound(y3, Fs);
    pause(5);
end
