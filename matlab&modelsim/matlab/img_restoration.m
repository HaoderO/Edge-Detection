clear all;
close all;
clc;

origin_img = imread('origin_img.jpg');          %��ȡͼƬ
gray_img = rgb2gray(origin_img);                %ͼƬתΪgray�Ҷ�ͼ
[v,h] = size(gray_img);                         %���ͼƬ�ߴ�[�߶ȣ����]
processed_img = uint8(zeros(v,h));

fid = fopen('processed_img.txt','r');           %���ļ�
for i=1:v
    for j=1:h
        processed_img(i,j) = fscanf(fid,'%d',1); 
    end 
end
fclose(fid);

subplot(121);imshow(gray_img),title('origin')
subplot(122);imshow(processed_img),title('processed')

imwrite(processed_img,'processed_img.jpg');      %������ͼƬ���Ϊjpg��ʽ