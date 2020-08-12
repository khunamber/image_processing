%histogram equalization
clc,clear,close all;
img1 = imread('overexposed1.jpg');
img2 = imread('satmap.jpg');
img3 = imread('aerial.jpg');
img1 = rgb2gray(img1);
img2 = rgb2gray(img2);
img3 = rgb2gray(img3);

subplot(2,3,1)
imshow(img1)
subplot(2,3,2)
imshow(img2)
subplot(2,3,3)
imshow(img3)
subplot(2,3,4)
histeq(img1);
subplot(2,3,5)
histeq(img2);
subplot(2,3,6)
histeq(img3);