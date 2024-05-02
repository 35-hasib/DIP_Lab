function f = zs(a,x)
    [w,h,l] = size(a);
    
    nw = ceil(w*x); nh = ceil(h*x);
    
    for i = 1:nw
        for j = 1:nh
            for k = 1:l
                b(i,j,k) = a(ceil(i*w/nw),ceil(j*h/nh),k);
            end
        end
    end
    f = b;
end