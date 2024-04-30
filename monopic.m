function m = monopic(gim)
    [k,l] = size(gim);
    for i = 1:k
        for j = 1:l
            if(gim(i,j)>128)
                b(i,j) = 1;
            else
                b(i,j) = 0;
            end
        end
    end
    m = b;
end