function dft(threshold)
    % Reset the random number generator
    rng("default");
    
    % Set Parameters
    f1 = 1; f2 = 10; f3 = 20; % Frequencies
    fs = 256; % # of Samples per Second
    t = (0:255) / 256; % Time

    % Create clean signal
    x0 = 3*sin(2*pi*f1*t) + cos(2*pi*f2*t) + 2*sin(2*pi*f3*t);
    
    gnoise = randn(1, 256); % Making Noise
    noisy = x0 + gnoise; % Adding Noise to Clean Signal to Produce Noisy Signal
    
    % Plot clean signal and noisy signal
    figure;
    fig1 = tiledlayout(3,1);
    title(fig1,'Time (s) vs. x(t)')
    nexttile;
    plot(x0);
    title('Clean Signal');
    xlabel('Time (s)');
    ylabel('x(t)');
    nexttile;
    plot(noisy);
    title('Noisy Signal');
    xlabel('Time (s)');
    ylabel('x(t)');
    
    % Compute DFT of noisy signal
    fft_noisy = fft(noisy);
    mag_fft_noisy = abs(fft_noisy);
    
    % Plot DFT magnitude
    figure;
    fig2 = tiledlayout(2, 1);
    title(fig2,'DFT Magintude and Denoised DFT Magnitude of Noisy Signal')
    nexttile;
    plot((0:255)/256, mag_fft_noisy);
    title('DFT Noisy');
    xlabel('DFT Sample');
    ylabel('DFT Amplitude');
    
    % Denoising DFT Magnitudes
    mag_denoised_fft_noisy = mag_fft_noisy;
    mag_denoised_fft_noisy(mag_fft_noisy < threshold) = 0;
    
    % Plot denoised DFT magnitude
    nexttile;
    plot((0:255)/256, mag_denoised_fft_noisy);
    title('DFT Denoised');
    xlabel('DFT Sample');
    ylabel('DFT Amplitude');

    % Denoised DFT Complex
    denoised_fft_noisy = fft_noisy;
    denoised_fft_noisy(mag_fft_noisy < threshold) = 0;

    % Inverse DFT to get denoised signal
    inverse_denoised_fft_noisy = ifft(denoised_fft_noisy);
    
    % Calculate MSE
    MSE = mean((x0 - inverse_denoised_fft_noisy).^2);
    MSE
    
    % Plot denoised signal
    nexttile(fig1);
    plot(inverse_denoised_fft_noisy);
    title('Denoised Signal');
    xlabel('Time (s)');
    ylabel('x(t)');
end
