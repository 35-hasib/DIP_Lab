function histoeq(im)
    [x,y,z] = size(im);
    if(z==3)
        im = graypic(im);
    end
    figure
    imshow(im)
    
    hg = histo(im);
    figure
    stem(hg);
    
    cdf = CSum(hg)/(x*y) * 255;
    h = zeros(x,y);
    for i = 1:x
        for j = 1:y
            h(i,j) = cdf(im(i,j)+1);
        end
    end
    h = uint8(h);
    
    figure
    imshow(h)
    
    figure
    stem(histo(h))
end 