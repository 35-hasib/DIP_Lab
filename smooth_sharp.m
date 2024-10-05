function f = smooth_sharp(im,w_matrix)
    [x,y,z] = size(im);
    [a,b] = size(w_matrix);
    totalweight = 0;
    for i = 1:a
        for j = 1:b
            totalweight = totalweight + w_matrix(i,j);
        end
    end
    im = double(im);
    f = zeros(x,y,z);
    
    for i = 2:x-1   %% mone rakhte hobe 2 to n-1
        for j = 2:y-1
            nhood = im(i-1:i+1 , j-1:j+1 , :);
            
            svalue = (w_matrix(1,1)*nhood(1,1,:)+w_matrix(1,2)*nhood(1,2,:)+w_matrix(1,3)*nhood(1,3,:)+...
                      w_matrix(2,1)*nhood(2,1,:)+w_matrix(2,2)*nhood(2,2,:)+w_matrix(2,3)*nhood(2,3,:)+...
                      w_matrix(3,1)*nhood(3,1,:)+w_matrix(3,2)*nhood(3,2,:)+w_matrix(3,3)*nhood(3,3,:))/totalweight;
            
            f(i,j,:) = svalue;
        end
    end
    
    f = uint8(f);
    
end