function X = RESOUSUP(A,b,n)
// Description of RESOUSUP(A,b,n)
// RESOUSUP permet d'afficher uniquement les valeurs supérieur de la matrice
// les valeurs situé dans le triange inférieur sont remplacer par 0

X = zeros(n,n)
k = 1
for i = 1 : n
    for j = i : n 
        X(i,j) = A(i,j)
    end
end

//disp(X)

endfunction