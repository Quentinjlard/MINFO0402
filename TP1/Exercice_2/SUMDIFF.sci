function C = SUMDIFF(A,B,n,m)
// Description of SUMDIFF(A,B,n,m)

    for i = 1 : n
        //disp(i)
        for j = 1 : m
            //disp(j)
            C(i,j) = A(i,j) - B(i,j)
            //disp(C(i,j))
        end
    end

endfunction