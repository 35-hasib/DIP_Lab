clc; close all; clear all;
a = imread('a.png');
a = imresize(a,[300,400]);
figure
imshow(a);
a = graypic(a);
figure
imshow(a);
a = monopic(a);
figure
imshow(a);
