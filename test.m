clc; close all; clear all;
a = imread('cc.jpg');
a = imresize(a,[300,600]);
figure
imshow(a);
a = graypic(a);
figure
imshow(a);


figure
imshow(zs(a,0.5));
