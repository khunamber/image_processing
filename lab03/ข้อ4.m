clc,clear,close all;

imgB = zeros(50);
imgB(1:50,1:50) = 0;
[ny,nx] = size(imgB) ;
centersquare  = round([nx ny]/2) ;
plot(centersquare (1),centersquare (2),'*r')
imgB(25:25,25:25) = 255;
circle = uint8(zeros(50,50))

radius = 20;
center = centersquare;
for i = 1:ny
    for j=1:nx
        length = sqrt((abs(i-center(1))^2)+(abs(j-center(2))^2));
        if length<=radius
            circle(i,j)=128;
        end
    end
end


imshow(imgB)
figure
imshow(circle)






