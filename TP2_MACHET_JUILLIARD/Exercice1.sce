pathname = get_absolute_file_path("Exercice1.sce");
exec(pathname+'\Fonction.sci',-1);

n= 10

A = zeros(1,n);
B = zeros(1,n);
C = zeros(1,n);
D = zeros(1,n);

for i = 1 : n
    A(i) = -1;
    B(i) = 2;
    C(i) = -1;
    D(i) = 1;
end

disp(A)
disp(B)
disp(C)
disp(D)

M =  zeros(n,n);

for i = 1 : n
    for j = 2 : n
        if(i == 1 && j == 2 )
            M(i,j-1) = B(i);
            M(i,j) = C(i);
        end
        if(i == j && i <> n)
            M(i,j-1) = A(i);
            M(i,j) = B(i);
            M(i,j+1) = C(i);
            j = j - 1;
        end
        if(i == j  && i == n )
            M(i,j-1) = A(i);
            M(i,j) = B(i);
            j = j -1;
        end
    end
end

disp(M)

X = RESOUTRI(A,B,C,D,n)

PRODMATTRI(A,B,C,X,n)