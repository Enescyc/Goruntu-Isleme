I=x7;
Ihsv=rgb2hsv(I)

% 
% H = round(Ihsv(:,:,1)*360);
% S=Ihsv(:,:,2);
% V=Ihsv(:,:,3);
% 
% mask_H= H<0.22 | H<0.18;
% mask_S= S<0.30 | S<0.27;
% mask_V= V<0.99 | V<.095;
% 
% masked_image= mask_H & mask_S &mask_V;
% imshow((masked_image))

hsvI = rgb2hsv(I);
 hueI = round(hsvI(:,:,1)*360);
 satI = hsvI(:,:,2);
 valI = hsvI(:,:,3);
mask = ((hueI<50)&(hueI>0) & (satI<0.68 & satI>0.23));
Id1=double(I(:,:,1)).*mask;
Id2=double(I(:,:,2)).*mask;
Id3=double(I(:,:,3)).*mask;
Id(:,:,1)=Id1;
Id(:,:,2)=Id2;
Id(:,:,3)=Id3;
Id=uint8(Id);
imshow(Id)