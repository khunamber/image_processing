clc,clear,close all;
img = imread('apple.jpg');
img = rgb2gray(img);
[row col] = size(img);

filtersize = 9;

border = (filtersize-1)/2;

filtering = zeros(row+(border*2),col+(border*2));
filtering(border+1:row+border,border+1:col+border)=img(1:row,1:col);

for y=1:row
    for x=1:col
        A = filtering(y:(y+filtersize)-1,x:(x+filtersize)-1);
        R = median(median(A));
        filtering(y+border,x+border)=R;
    end
end

output = uint8(filtering(border+1:row+border,border+1:col+border));

subplot(1,2,1)
imshow(output);

subplot(1,2,2)
imshow(img);