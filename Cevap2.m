clc; 
close all; 
clear;
im= imread ('170504034_OnderFatihBuhurcu_Odev1.jpg');
I=rgb2gray(im);
max_x = size (I,1);
max_y =size (I,2);
a=2;
x=0:255;
LUT=255./(1+exp(-a*(x-127)/32));

for i=1:max_x
    for j=1:max_y
        for k=1:256
            if I(i,j)==k
                I(i,j)=LUT(1,k);
            end
        end
    end
end

subplot(1,3,1),imshow(im),title('Orjinal görüntü');
subplot(1,3,2),imshow(rgb2gray(im)),title('Grayscale görüntü');
subplot(1,3,3),imshow(I),title('LUT görüntü');
