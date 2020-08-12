clc,clear,close all;
img = imread('tem.jpg');
gray = rgb2gray(img);
output = img;
[row, col] = size(gray);

color=[[]];

for y=1:row
    for x=1:col
        input = gray(y,x);
        %hsv = rgb2hsv(input);
        if(input<256&&input>127)
            output(y,x,:) = [input,0,0];
        elseif(input<128&&input>85)
            output(y,x,:) = [255,255,255];
        elseif(input<86&&input>0)
            output(y,x,:) = [0,0,input*3];
        end
    end
end

subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(gray);
subplot(1,3,3);
imshow(output);