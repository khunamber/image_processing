clc,clear,close all;
img = imread('apple.jpg');
input = rgb2gray(img);
[row, col] = size(input);
v = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]
filtersize = size(v);
filtersize = filtersize(2);
kernel = diag(v);
border = (filtersize-1)/2;

filtering = zeros(row+(border*2),col+(border*2));
filtering=filtering./2;
filtering(border+1:row+border,border+1:col+border)=input(1:row,1:col);
base = filtering;

for y=1:row
    for x=1:col
        A = base(y:(y+filtersize)-1,x:(x+filtersize)-1);
        mblur = A.*kernel;
        mblur = sum(sum(mblur));
        filtering(y+border,x+border)=mblur/(filtersize/2);
    end
end

output = uint8(filtering(border+1:row+border,border+1:col+border));
imshow(output);