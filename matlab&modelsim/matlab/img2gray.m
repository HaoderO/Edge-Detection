clear all;
close all;
clc;

origin_img = imread('origin_img.jpg');      %输入彩色图片
[v,h,N] = size(origin_img);                 %获得图片尺寸
gray_img = rgb2gray(origin_img);            %彩色图转为灰度图

fid=fopen('origin_img.txt','w');            %新建txt文件用以存储像素数据  
for i=1:v  
    for j=1:h
        fprintf(fid,'%x\n',gray_img(i,j));  %将像素数据存入txt文件
    end   
end
fclose(fid);                                