function X = RESOUINF(A,b,n)
// Description of RESOUINF(A,b,n)
// RESOUINF permet d'afficher uniquement les valeurs inférieur de la matrice
// les valeurs situé dans le triange supérieur sont remplacer par 0

X = zeros(n,n) // Création d'une matrice carré de n x n remplie de 0

for i = 1 : n // Par cours la totalité de la ligne
    for j = 1 : i // Parcours uniquement la ligne de i et s'arrete quand i = j
        X(i,j) = A(i,j) //Affectation des valeur de A(i,j) dans X(i,j)
    end
end

//disp(X)


endfunction