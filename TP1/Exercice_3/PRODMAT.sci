function C = PRODMAT(A,B,n,m,q)
// Description of PRODMAT(A,B,n,m,q)

    if m <> q then 
        for i = 1 : n
            for j = 1 : m
                C(i,j) = 0
            end
        end
    else
        for i = 1 : n
            for j = 1 : m
                C(i,j) = A(i,j) * B(i,j)
            end
        end
    end

endfunction