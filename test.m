clc; close all; clear all;
a = imread('bb.jpg');
a = imresize(a,[300,300]);
figure
imshow(a);


logt(a)
