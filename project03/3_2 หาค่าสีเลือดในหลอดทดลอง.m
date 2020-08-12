clc,clear,close all;
img = imread('P03_2im.jpg');
output = img;
[row,col,z] = size(img);

field_check = [154 114;229 535];
field_color = [64 25;380 85];
max_hue = 0;
min_hue = 1;
max_velo = 0;
min_velo = 1;
for y=field_check(1,2):field_check(2,2)
    for x=field_check(1,1):field_check(2,1)
        color = img(y,x,:);
        hsv = rgb2hsv(color);
        if hsv(2)>0.61 && hsv(1)<0.17
            hsv(2)=1;
            if hsv(1) > max_hue
                max_hue = hsv(1);
            end
            if hsv(1) < min_hue
                min_hue = hsv(1);
            end
            if hsv(3) > max_velo
                max_velo = hsv(3);
            end
            if hsv(3) < min_velo
                min_velo = hsv(3);
            end
            rgb = hsv2rgb(hsv);
            rgb = rgb.*255;
            output(y,x,:) = rgb;
        end
    end
end
color_field_height=abs(field_color(1,2)-field_color(2,2));
color_field_width=abs(field_color(1,1)-field_color(2,1));
for y=field_color(1,2):field_color(2,2)
    height = abs(y-field_color(1,2))/color_field_height;
    for x=field_color(1,1):field_color(2,1)
        hsv(1)=min_hue+(height*abs(min_hue-max_hue));
        hsv(2)=1;
        width = abs(x-field_color(1,1))/color_field_width;
        hsv(3)=max_velo-(width*abs(min_velo-max_velo));
        rgb = hsv2rgb(hsv);
        rgb = rgb.*255;
        output(y,x,:) = rgb;
    end
end
output = insertText(output,[46 7],min_hue,'FontSize',18);
output = insertText(output,[35 39],'hue','FontSize',18);
output = insertText(output,[46 85],max_hue,'FontSize',18);
output = insertText(output,[184 85],'velocity','FontSize',18);
output = insertText(output,[350 85],max_velo,'FontSize',18);
%64 25 380 85
imshow(img);
figure
imshow(output);