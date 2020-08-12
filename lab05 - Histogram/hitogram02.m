clc,clear,close all;
img = imread('apple.jpg');
img = rgb2gray(img);
[row col] = size(img);

bino = [0:255];
count = zeros(1,256);

for y = 1:row
    for x = 1:col
        val = img(y ,x);
        if(val == 255)
            count(1,256) = count(1,256)+1;
        elseif(val == 254)
            count(1,255) = count(1,255)+1;
        else
            count(1,val+1) = count(1,val+1)+1;
        end
    end
end
subplot(2,1,1);
bar(bino,count);
xlim([0 255]);
ylim([0 3500]);
subplot(2,1,2);
imhist(img);
