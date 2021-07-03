clc; 
close all; 
clear; 
im= imread ('170504034_OnderFatihBuhurcu_Odev1.jpg');
img=rgb2gray(im);
max_r = size (img,1);
max_c =size (img,2);
histogram =zeros ([1 256]);
kumulatif_histogram = zeros ([1 256]);
for r=1:max_r
  for c=1:max_c
    for count =1:256
          if(img(r,c) == count-1 )
             histogram (count) =histogram (count)+ 1;
          break ;
          end
    end
 end
end
temp = 0;
for count=1:256
    temp = temp + histogram (count);
    kumulatif_histogram(count) = temp;
end
normallestirilmis_histogram = zeros ([1 256]);
cdf_min = min (kumulatif_histogram) ;
for count = 1:256
     normallestirilmis_histogram(count) = kumulatif_histogram(count) - cdf_min;
     normallestirilmis_histogram(count) = normallestirilmis_histogram (count) / ((max_r*max_c)- cdf_min);
     normallestirilmis_histogram(count) = round (normallestirilmis_histogram (count) * 255);
end
esitleme_resim = zeros ([max_r max_c]);
for r =1:max_r
    for c=1:max_c
        for count = 1:256
            if(img(r,c) ==(count-1))
                esitleme_resim(r,c) = normallestirilmis_histogram(count);
                break;
            end
        end
    end
end
subplot(1,3,1);
imshow(im);
title('Orijinal Resim');
subplot(1,3,2);
imshow(img);
title('Grayscale görüntü');
subplot(1,3,3);
imshow (uint8(esitleme_resim));
title('Histogram Eşitleme Resim');