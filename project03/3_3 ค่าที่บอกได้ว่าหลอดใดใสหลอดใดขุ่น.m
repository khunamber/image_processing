clc,clear,close all;
img01 = imread('P03_3im01.jpg');
img02 = imread('P03_3im02.jpg');
output01 = img01;
output02 = img02;

img01_gray = rgb2gray(img01);%237 115 - 342 666
img02_gray = rgb2gray(img02);%217 118 - 327 658

count01 = 0;
count02 = 0;

max_gray_level = [60 90 115 200];
color_level = [[0,255,0] [255,255,0] [255,125,0] [255,0,0]];

field_check = [155 666;217 343];
for y=field_check(1,1):field_check(1,2)
    for x=field_check(2,1):field_check(2,2)
        level = size(max_gray_level);
        for i=1:level(2)
            j = (i*2)+(i-2);
            color = color_level(j:j+2);
            if(img01_gray(y,x)>max_gray_level(i))
                output01(y,x,:) = color;
                count01 = count01+1;
            end
            if(img02_gray(y,x)>max_gray_level(i))
                output02(y,x,:) = color;
                count02 = count02+1;
            end
        end
    end
end

if(count01<count02)
    output01 = insertText(output01,[237 115],'less dim','FontSize',50,'BoxColor','white');
    output02 = insertText(output02,[217 118],'more dim','FontSize',50,'BoxColor','white');
else
    output02 = insertText(output02,[237 115],'less dim','FontSize',50,'BoxColor','white');
    output01 = insertText(output01,[217 118],'more dim','FontSize',50,'BoxColor','white');
end

subplot(1,2,1)
imshow(output01);
subplot(1,2,2)
imshow(output02);