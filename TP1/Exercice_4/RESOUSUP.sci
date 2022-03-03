function X = RESOUSUP(A,b,n)
// Description of RESOUSUP(A,b,n)

X = zeros(n,n)
k = 1
for i = 1 : n
    for j = i : n 
        X(i,j) = A(i,j)
    end
end

//disp(X)

endfunction