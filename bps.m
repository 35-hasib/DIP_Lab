function f = bps(a)
    [w,h,l] = size(a);
    c = zeros(w,h,l);
    a = double(a);
    for i = 1:8
       b = mo(a,2);          %% b = a - floor(a/2)*2;
       a = (a-b)/2;          %% a = floor(a/2);
       
       figure
       imshow(b);
       two = 1;
       for j = 2:i
           two = two*2;
       end
       c = c + b*two;
    end
    c = uint8(c);
    figure
    imshow(c);
end