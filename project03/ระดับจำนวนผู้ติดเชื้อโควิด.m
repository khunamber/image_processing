clc,clear,close all;
img = imread('riskCovid19.png');
blur = imfilter(img, 1.0, 'symmetric');
gray = rgb2gray(blur);
output = img;
[row, col] = size(gray);

color=[];

for y=1:row
    for x=1:col
        input = gray(y,x);
        %hsv = rgb2hsv(input);
        if(input<= 240&&input>= 235)
            output(y,x,:) = [192,192,192];
        elseif(input<230&&input>210)
            output(y,x,:) = [192,192,192];
        elseif(input==169)
            output(y,x,:) = [255,128,0];
        elseif(input==201)
            output(y,x,:) = [255,128,0];
        elseif(input==115)
            output(y,x,:) = [204,0,0];
        elseif(input==159)
            output(y,x,:) = [204,0,0];
        elseif(input==242)
            output(y,x,:) = [255,255,0];
        elseif(input==244)
            output(y,x,:) = [229,255,204];
        end
    end
end

subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(output);

figure
imshow(output);
