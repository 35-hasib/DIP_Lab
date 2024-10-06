function pac_histoeq(a)
    [x,y,z] = size(a);
    if z == 3
        a = graypic(a);
    end
    figure
    imshow(a)
    h = pac_histo(a);
    figure
    stem(h)
    csum = pac_csum(h);
    cdf = csum/(x*y) * 255;
    aa = a*0;
    for i = 1:x
        for j = 1:y
            aa(i,j) = cdf(a(i,j)+1);
        end
    end
    
    aa = uint8(aa);
    figure
    imshow(aa)
    hh = pac_histo(aa);
    figure
    stem(hh)

end