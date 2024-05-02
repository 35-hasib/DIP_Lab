clc; close all; clear all;

for i = 1:8
   for j = 1:8
      if mod((i+j),2) == 1
          a(i,j) = 255;
      else
          a(i,j) = 0;
      end
   end
end
figure
imshow(a);

histoeq(a);