function f = mo(a)
    [w,h] = size(a);
    a = double(a);
    for i = 1:w
        for j = 1:h
            v = a(i,j);
            while true
                if v == 1
                    break;
                end
                if v == 0
                    break;
                end
                v = v - 2;
            end
            b(i,j) = v;
        end
    end
    f = b;
end