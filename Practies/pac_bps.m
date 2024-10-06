function pac_bps(a,bit)
    [x,y,z] = size(a);
    s = zeros(x,y,z,bit);
    a = double(a);
    
    for i = 1:bit
        b = a - floor(a/2)*2;
        a = floor(a/2);
        
        figure
        imshow(b)
        title(['slice no ' num2str(i)]);
        
        s(:,:,:,i) = b;
    end
    
    c = a*0;
    t = 1;
    for i = 1:bit
        c = c + s(:,:,:,i) * t;
        t = t * 2;
    end
    
    figure
    imshow(uint8(c))
end