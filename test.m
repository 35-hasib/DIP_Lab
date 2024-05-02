clc; close all; clear all;
a = imread('a.png');
a = imresize(a,[300,600]);
figure
imshow(a);
a = graypic(a);xx
figure
imshow(a);

histoeq(a);
