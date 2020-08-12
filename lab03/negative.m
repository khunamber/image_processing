clc,clear,close all;
img = imread('apple.jpg');
img = rgb2gray(img);
[row,col] = size(img);
img2 = uint8(zeros(row,col));
for y=1:row
    for x=1:col
        img2(y,x) = 255-img(y,x);
    end
end

imshow(img);
figure
imshow(img2);