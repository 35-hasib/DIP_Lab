function logt(im)
    im = double(im)/255;
    c = 2;
    
    im = c * log(im+1);
    
    figure
    imshow(im)
end