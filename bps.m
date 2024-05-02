function f = bps(a)
    [w,h] = size(a);
    c = zeros(w,h);
    a = double(a);
    for i = 1:8
       b = mo(a);          %% b = a - floor(a/2)*2;
       a = floor(a/2);
       
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