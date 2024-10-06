function pac_ss(a)
    [x,y,z] = size(a);
    m = [1,1,1;1,1,1;1,1,1];
    tw = 9;
    ni = a*0;
    a = double(a);
    for i=2:x-1
        for j=2:y-1
            tv = 0;
            for k=-1:1
                for l=-1:1
                    tv =tv + a(i+k,j+l,:)* m(k+2,l+2);
                end
            end
            ni(i,j,:) = tv/tw;
        end
    end
    
    figure
    imshow(uint8(ni))
    
end