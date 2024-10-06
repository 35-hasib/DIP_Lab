clc; close all;
a = imread('aa.jpg');
a = imresize(a,[300,300]);
figure
imshow(a);

bps(a,8)