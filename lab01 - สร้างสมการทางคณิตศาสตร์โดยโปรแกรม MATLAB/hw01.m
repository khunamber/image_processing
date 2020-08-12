clear
clc
x = [1:100]
y1 = 77*x+2
y2 = sin(13*x)
y3 = (x.^2)+5

subplot(3,1,1)
plot(x,y1)
subplot(3,1,2)
plot(x,y2)
subplot(3,1,3)
plot(x,y3)