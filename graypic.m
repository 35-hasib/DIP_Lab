function f = graypic(im)
    f = .3*im(:,:,1) + .6*im(:,:,2) + .1*im(:,:,3);
end