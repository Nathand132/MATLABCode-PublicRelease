% Read and display original image
original_image_array = imread('cameraman.pgm');
imshow(original_image_array);
disp(['Original Image Size: ', num2str(size(original_image_array))]);

% Display last 2x2 block of original image
disp('Last 2x2 block of original image:');
disp(original_image_array(end-1:end, end-1:end));

% Upsample the original image
upsampled_image = upsampling(original_image_array);

% Display upsampled image
figure;
imshow(upsampled_image);
disp(['Upsampled Image Size: ', num2str(size(upsampled_image))]);

% Display last 4x4 block of upsampled image
disp('Last 4x4 block of upsampled image:');
disp(upsampled_image(end-3:end, end-3:end));

% Save upsampled image as cameraman2.pgm
saveas(gcf,'cameraman2.pgm')

% Upsample the upsampled image again
upsampled_image_2 = upsampling(upsampled_image);

% Display upsampled image
figure;
imshow(upsampled_image_2);
disp(['Upsampled Image 2 Size: ', num2str(size(upsampled_image_2))]);

% Display last 8x8 block of upsampled image 2
disp('Last 8x8 block of upsampled image 2:');
disp(upsampled_image_2(end-7:end, end-7:end));

% Save upsampled image 2 as cameraman4.pgm
saveas(gcf, 'cameraman4.pgm');
