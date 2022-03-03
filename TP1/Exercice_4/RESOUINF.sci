function X = RESOUINF(A,b,n)
// Description of RESOUINF(A,b,n)

X = zeros(n,n)
k = 1
for i = 1 : n
    for j = 1 : i
        X(i,j) = A(i,j)
    end
end

//disp(X)


endfunction