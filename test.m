clc; close all; clear all;
a = imread('aa.jpg');
a = imresize(a,[300,600]);
figure
imshow(a);
histoeq(a)
