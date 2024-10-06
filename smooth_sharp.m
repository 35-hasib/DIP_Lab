function f = smooth_sharp(im)
    [x,y,z] = size(im);
    w_matrix = [1,1,1;1,1,1;1,1,1];         %for smooth
    %w_matrix = [-1,-1,-1;-1,9,-1;-1,-1,-1]; %for sharp
    %w_matrix = [0,-1,0;-1,5,-1;0,-1,0];     %for sharp
    
    [a,b] = size(w_matrix);
    totalweight = 0;
    for i = 1:a
        for j = 1:b
            totalweight = totalweight + w_matrix(i,j);
        end
    end
    f = im * 0;
    im = double(im);
    for i = 2:x-1   %% mone rakhte hobe 2 to n-1
        for j = 2:y-1
            nhood = im(i-1:i+1 , j-1:j+1 , :); %% Importent
            svalue = 0;
            for k = 1:a
                for l = 1:b
                    svalue = svalue + w_matrix(k,l)*nhood(k,l,:);
                end
            end
            f(i,j,:) = svalue/totalweight;
        end
    end
    
    f = uint8(f);
    
end