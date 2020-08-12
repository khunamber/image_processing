clc,clear,close all;
img = imread('north.jpg');
blur = imfilter(img, 1.5, 'symmetric');
gray = rgb2gray(blur);
output = img;
[row, col] = size(gray);

color=[[]];

for y=1:row
    for x=1:col
        input = gray(y,x);
        %hsv = rgb2hsv(input);
        if(input<244&&input>235)
            output(y,x,:) = [0,255,0];
        elseif(input<211&&input>205)
            output(y,x,:) = [255,255,255];
        elseif(input<175&&input>168)
            output(y,x,:) = [0,0,255];
        elseif(input<134&&input>120)
            output(y,x,:) = [0,0,0];
        elseif(input<232&&input>224)
            output(y,x,:) = [255,0,0];
        elseif(input<152&&input>144)
            output(y,x,:) = [255,255,0];
        elseif(input<171&&input>164)
            output(y,x,:) = [0,255,255];
        elseif(input<181&&input>172)
            output(y,x,:) = [255,127,39];
        elseif(input<196&&input>189)
            output(y,x,:) = [112,146,190];
        elseif(input<156&&input>139)
            output(y,x,:) = [163,73,164];
        end
    end
end

subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(gray);
subplot(1,3,3);
imshow(output);