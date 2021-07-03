clc; 
close all; 
clear; 
im=imread('170504034_OnderFatihBuhurcu_Odev1.jpg');
image=rgb2gray(im);
I = double(image);
max_x = size (image,1);
max_y =size (image,2);

parlaklik=0;
for i=1:max_x
    for j=1:max_y
        if I(i,j)+parlaklik<256    
            I(i,j)=I(i,j)+parlaklik;
        elseif I(i,j)+parlaklik>255
            I(i,j)=255;
        end
    end
end
Sonuc0(:,:) = I;


I = double(image);


parlaklik=75;
for i=1:max_x
    for j=1:max_y
        if I(i,j)+parlaklik<256    
            I(i,j)=I(i,j)+parlaklik;
        elseif I(i,j)+parlaklik>255
            I(i,j)=255;
        end
    end
end
Sonuc75(:,:) = I;

I = double(image);

parlaklik=140;
for i=1:max_x 
    for j=1:max_y
        if I(i,j)+parlaklik<256    
            I(i,j)=I(i,j)+parlaklik;
        elseif I(i,j)+parlaklik>255
            I(i,j)=255;
        end
    end
end
Sonuc140(:,:) = I;

I = double(image);

parlaklik=200;
for i=1:max_x
    for j=1:max_y
        if I(i,j)+parlaklik<256    
            I(i,j)=I(i,j)+parlaklik;
        elseif I(i,j)+parlaklik>255
            I(i,j)=255;
        end
    end
end
Sonuc200(:,:) = I;

I = double(image);

parlaklik=255;
for i=1:max_x
    for j=1:max_y
        if I(i,j)+parlaklik<256    
            I(i,j)=I(i,j)+parlaklik;
        elseif I(i,j)+parlaklik>255
            I(i,j)=255;
        end
    end
end
Sonuc255(:,:) = I;

subplot(4,2,1),imshow(im),title('orjinal görüntü');

subplot(4,2,2),imshow(image),title('Grayscale görüntü');
 
subplot(4,2,3),imshow(uint8(Sonuc0)),title('0 parlaklığı arttırılmış görüntü');

subplot(4,2,4),imshow(uint8(Sonuc75)),title('75 parlaklığı arttırılmış görüntü');

subplot(4,2,5),imshow(uint8(Sonuc140)),title('140 parlaklığı arttırılmış görüntü');

subplot(4,2,6),imshow(uint8(Sonuc200)),title('200 parlaklığı arttırılmış görüntü');

subplot(4,2,7),imshow(uint8(Sonuc255)),title('255 parlaklığı arttırılmış görüntü');
