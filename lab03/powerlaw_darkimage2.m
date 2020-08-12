clc,clear,close all;
img = imread('darkimage2.jpg');
img = rgb2gray(img);
[row,col] = size(img);
img2 = zeros(row,col);
img2(1:row,1:col) = img(1:row,1:col);

gamma = 1.5;
c=1;
for y=1:row
    for x=1:col
        img2(y,x) = c*img2(y,x)^gamma;
    end
end

subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(uint8(img2));