img = x7
img = rgb2gray(img);
LOWER_LIMIT=150;
UPPER_LIMIT=210;
for i =1:size(img,1)
for j =1:size(img,2)
if img(i,j)<UPPER_LIMIT && img(i,j)>LOWER_LIMIT
extrct(i,j) = 1;
else
extrct(i,j) = 0;
end
end
end
extrct = logical(extrct);
final = img.*uint8(extrct);
final=final.*2.5;
ed_img = edge(extrct,'canny');

imshow(final)
