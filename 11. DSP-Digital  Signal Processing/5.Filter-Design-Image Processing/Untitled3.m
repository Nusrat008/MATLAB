clc
originalImage = imread('flower.jpeg');
Noise=imnoise(originalImage,'salt & pepper')
original = double(Noise);
filterSize = 3;
kernel = ones(filterSize) / filterSize^2;
filteredImage = imfilter(original, kernel);
filteredImage = uint8(filteredImage);
figure;
subplot(1, 3, 1);
imshow(originalImage, []);
title('Original Image');
subplot(1, 3, 2);
imshow(original, []);
title('Noise added Image');
subplot(1, 3, 3);
imshow(filteredImage, []);
title('Filtered Image');