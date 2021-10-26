%% 1
zplate=imread('zoneplate.tif');
figure(1)
imshow(zplate)
figure(2)
imhist(zplate)
%% 2
Max_zplate=max(max(zplate)) % maxmium of the rows and columns of the image.
Min_zplate=min(min(zplate)) % minium of the rows and columns of the image
range_zplate=Max_zplate - Min_zplate % range of value present in the image 
%% 3 Image invert 
% method 1 
zplate_inv=(Max_zplate-zplate);
figure(3)
subplot(2,1,1)
imshow(zplate_inv)
subplot(2,1,2)
imhist(zplate_inv)
% method 2
X2 = imcomplement(zplate);
figure(4)
subplot(2,1,1)
imshow(X2)
figure
imhist(X2)
