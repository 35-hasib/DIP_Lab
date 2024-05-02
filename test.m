clc; close all; clear all;
a = imread('b.jpg');
a = imresize(a,[300,600]);
figure
imshow(a);
a = graypic(a);
figure
imshow(a);

bps(a);
