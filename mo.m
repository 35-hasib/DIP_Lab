function f = mo(a,x)
    [w,h,l] = size(a);
    a = double(a);
    for i = 1:w
        for j = 1:h
            for k = 1:l
                v = a(i,j,k);
                while true
                    if v < x
                        break;
                    end
                    v = v - x;
                end
                b(i,j,k) = v;
            end
        end
    end
    f = b;
end