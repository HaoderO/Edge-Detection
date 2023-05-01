clear all;
close all;
clc;

origin_img = imread('origin_img.jpg');      %�����ɫͼƬ
[v,h,N] = size(origin_img);                 %���ͼƬ�ߴ�
gray_img = rgb2gray(origin_img);            %��ɫͼתΪ�Ҷ�ͼ

fid=fopen('origin_img.txt','w');            %�½�txt�ļ����Դ洢��������  
for i=1:v  
    for j=1:h
        fprintf(fid,'%x\n',gray_img(i,j));  %���������ݴ���txt�ļ�
    end   
end
fclose(fid);                                