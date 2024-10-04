function output_array = upsampling(input_array)
    % Convert input to double
    input_array = double(input_array);
    
    % Get input image size
    [rows, cols] = size(input_array);
    
    % Create output image with twice the size
    output_array = zeros(2*rows, 2*cols);
    
    % Copy input to output with step size of 2
    output_array(1:2:end, 1:2:end) = input_array;

    % Interpolation of the Row
    output_array(:, 2:2:end-1) = (output_array(:, 1:2:end-2) + output_array(:, 3:2:end)) / 2;
    output_array(:, end) = output_array(:, end-1); % Last column
    
    % Interpolation of the Column
    output_array(2:2:end-1, :) = (output_array(1:2:end-2, :) + output_array(3:2:end, :)) / 2;
    output_array(end, :) = output_array(end-1, :); % Last row
    
    % Convert to uint8 and return
    output_array = uint8(output_array);
end
