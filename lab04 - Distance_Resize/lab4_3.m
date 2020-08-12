clc, clear,close all 
imgC = zeros(50,50);
imgC(25,25) = 0;
[ny,nx] = size(imgC);
i = 1;
j = 1;
for i = 1:ny
    for j = 1:nx
        if i <= 50 && j <=50
        imgC(i,j) = max(abs(25-i),abs(25-j));
        end
        j = j+1 ;
    end
    i = i+1;
end

mesh(imgC)