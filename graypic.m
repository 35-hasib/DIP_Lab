function g = graypic(im)
    g = .3*im(:,:,1) + .6*im(:,:,2) + .1*im(:,:,3);
end