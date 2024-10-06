function gammat(im)
    im = double(im)/255;
    c = 1;
    gamma = 0.5;
    im = c * im.^gamma;
    
    figure
    imshow(im)
end