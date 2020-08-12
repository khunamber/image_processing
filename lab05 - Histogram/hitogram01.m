clc,clear,close all;
img = imread('apple.jpg');
img = rgb2gray(img);
imhist(img);