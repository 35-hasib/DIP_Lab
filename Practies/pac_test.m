clc; close all;
a = imread('aaa.jpg');
a = imresize(a,[300,300]);
figure
imshow(a);

pac_ss(a)