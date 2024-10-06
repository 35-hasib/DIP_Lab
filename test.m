clc; close all;
a = imread('b.jpg');

figure
imshow(a);

figure
imshow(smooth_sharp(a))