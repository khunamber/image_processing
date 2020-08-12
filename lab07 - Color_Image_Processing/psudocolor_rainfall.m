clc,clear,close all;
img = imread('rainfall_thailand.png');
gray = rgb2gray(img);
output = img;
[row, col] = size(gray);

color=[[]];

for y=1:row
    for x=1:col
        input = gray(y,x);
        %hsv = rgb2hsv(input);
        if(input<237&&input>232)
            output(y,x,:) = [255,0,0];
        elseif(input<226&&input>220)
            output(y,x,:) = [0,255,0];
        elseif(input<216&&input>207)
            output(y,x,:) = [0,0,255];
        elseif(input<199&&input>193)
            output(y,x,:) = [255,255,0];
        elseif(input<186&&input>180)
            output(y,x,:) = [255,0,255];
        elseif(input<167&&input>161)
            output(y,x,:) = [128,128,128];
        elseif(input<146&&input>137)
            output(y,x,:) = [255,128,192];
        elseif(input<120&&input>112)
            output(y,x,:) = [128,64,0];
        elseif(input<84&&input>78)
            output(y,x,:) = [0,0,0];
        end
    end
end

subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(gray);
subplot(1,3,3);
imshow(output);