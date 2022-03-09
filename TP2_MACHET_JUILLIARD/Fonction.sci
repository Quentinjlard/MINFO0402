function res = calcE(a,b,c,e)
    res = -c/(a*e+b)
endfunction

function res = calcF(a,b,d,e,f)
    res = (d-a*f)/(a*e+b)
endfunction

function X = RESOUTRI(A,B,C,D,n)
    E = zeros(n,1)
    F = zeros(n,1)
    X = zeros(n,1)
    E(1) = -C(1)/B(1)
    F(1) = D(1)/B(1)
    for i = 2:n-1
        E(i) = calcE(A(i),B(i),C(i),E(i-1))
        F(i) = calcF(A(i),B(i),D(i),E(i-1),F(i-1))
    end
    F(n) = calcF(A(n),B(n),D(n),E(n-1),F(n-1))
    X(n) = F(n)
    for i = n-1:-1:1
        X(i) = E(i)*X(i+1)+F(i)
    end
endfunction

function Y = PRODMATTRI(A,B,C,X,n)
    Y = zeros(n,1)
    Y(1) = B(1)*X(1) + C(1)*X(2)
    for i = 2:n-1
        Y(i) = A(i)*X(i-1) + B(i)*X(i) + C(i)*X(i+1)
    end
    Y(n) = A(n)*X(n-1) + B(n)*X(n)
endfunction
