function f = histo(im)
    h = zeros(1,256);
    [x,y,z] = size(im);
    if(z==3)
        im = graypic(im);
    end
    
    for i = 1:x
        for j = 1:y
            h(im(i,j)+1) = h(im(i,j)+1)+1;
        end
    end
    f = h;
end