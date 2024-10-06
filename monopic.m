function f = monopic(im)
    [x,y,z] = size(im);
    if z > 1
        im = graypic(im);
    end

    for i = 1:x
        for j = 1:y
            if(im(i,j) > 128)
                b(i,j) = 1;
            else
                b(i,j) = 0;
            end
        end
    end
    f = b;
end