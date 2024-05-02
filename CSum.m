function f = CSum(h)
    [m,n] = size(h);
    s = 0;
    for i = 1:256
        s = s + h(i);
        f(i) = s;
    end
    
end