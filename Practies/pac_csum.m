function f = pac_csum(h)
    s = 0 *h;
    sum = 0;
    for i = 1:255
        sum = sum + h(i);
        s(i) = sum;
    end
    f = s;
end