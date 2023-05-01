clear all;
close all;
clc;

origin_img = imread('origin_img.jpg');          %读取图片
gray_img = rgb2gray(origin_img);                %图片转为gray灰度图
[v,h] = size(gray_img);                         %获得图片尺寸[高度，宽度]
processed_img = uint8(zeros(v,h));

fid = fopen('processed_img.txt','r');           %打开文件
for i=1:v
    for j=1:h
        processed_img(i,j) = fscanf(fid,'%d',1); 
    end 
end
fclose(fid);

subplot(121);imshow(gray_img),title('origin')
subplot(122);imshow(processed_img),title('processed')

imwrite(processed_img,'processed_img.jpg');      %处理后的图片输出为jpg格式