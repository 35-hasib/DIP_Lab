function f = pac_histo(a)
    [x,y,z] = size(a);
    if z == 3
        a = graypic(a);
    end
    
    h = zeros(1,255);
    for i = 1:x
        for j = 1:y
            h(a(i,j)+1) = h(a(i,j)+1) +1;
        end
    end
    f = h;
end