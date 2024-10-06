function bps(a,bit)
    [x,y,z] = size(a);
    c = zeros(x,y,z);
    a = double(a);
    s = zeros(x,y,z,bit);
    for i = 1:bit
       b = mo(a,2);          %% b = a - floor(a/2)*2;
       a = (a-b)/2;          %% a = floor(a/2);
       figure
       imshow(b);
       title(['slice No : ' num2str(i)])
       
       s(:,:,:,i) = b;
    end
    
    two = 1;    % 2^0 = 1
    for i = 1:bit
        c = c + s(:,:,:,i) * two;
        
        two = two * 2;
    end
    c = uint8(c);
    figure
    imshow(c);
    
end

    
