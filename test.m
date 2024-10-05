clc; close all; clear all;
a = imread('bb.jpg');
a = imresize(a,[300,300]);
figure
imshow(a);

m = [1,1,1; %%For smoth       %% m = [-1,-1,-1; For sharp
     1,1,1;                   %%      -1,9,-1;
     1,1,1];                  %%      -1,-1,-1];

figure
imshow(smooth_sharp(a,m));