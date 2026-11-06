clc; clear;

atomsLoad("IPCV");

img = imread("D:\SCI\Lab4\input.png");

if size(img, 3) == 1 then
    gray = double(img(:, :, 1));
else
    gray = round(0.299 * double(img(:, :, 1)) ...
               + 0.587 * double(img(:, :, 2)) ...
               + 0.114 * double(img(:, :, 3)));
end

gray(gray < 0) = 0;
gray(gray > 255) = 255;

histogram = zeros(1, 256);
for level = 0:255
    histogram(level + 1) = sum(gray(:) == level);
end

cdf = cumsum(histogram);
firstNonzero = find(histogram > 0);
cdfMin = cdf(firstNonzero(1));
numberOfPixels = size(gray, "*");

if numberOfPixels == cdfMin then
    map = zeros(1, 256);
else
    map = round(255 * (cdf - cdfMin) / (numberOfPixels - cdfMin));
end

map(map < 0) = 0;
map(map > 255) = 255;

equalized = zeros(gray);
for level = 0:255
    equalized(gray == level) = map(level + 1);
end

equalized_histogram = zeros(1, 256);
for level = 0:255
    equalized_histogram(level + 1) = sum(equalized(:) == level);
end

imshow(uint8(gray));
f = gcf(); f.name = "Original grayscale image";

imshow(uint8(equalized));
f = gcf(); f.name = "Histogram-equalized image";

scf(5); clf();
subplot(2, 1, 1);
plot(0:255, histogram);
title("Original histogram"); xlabel("Gray level"); xgrid();

subplot(2, 1, 2);
plot(0:255, equalized_histogram);
title("Equalized histogram"); xlabel("Gray level"); xgrid();

imwrite(uint8(equalized), "D:\SCI\Lab4\equalized.png");
