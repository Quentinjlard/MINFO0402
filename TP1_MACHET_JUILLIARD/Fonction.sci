function X=RESOUINF(A,b,n)
// Description of RESOUINF(A,b,n)
// RESOUINF permet d'afficher uniquement les valeurs inférieur de la matrice
// les valeurs situé dans le triange supérieur sont remplacer par 0

X(1)=b(1)/A(1,1)                        // Création d'une matrice carré de n x n remplie de 0
for i = 1 : n                             // Parcours la totalité de la ligne
    Aux=0
    for j = 1 : i-1                     // Parcours uniquement la ligne de i et s'arrete quand j = i
        Aux=Aux + A(i,j) * X(j)
    end
X(i)=(b(i)-Aux)/A(i,i)
end
endfunction

function X=RESOUSUP(A,b,n)
// Description of RESOUSUP(A,b,n)
// RESOUSUP permet d'afficher uniquement les valeurs supérieur de la matrice
// les valeurs situé dans le triange inférieur sont remplacer par 0.

X(n)=b(n)/A(n,n)
for i=n-1 : - 1 :1
    Aux=0
    for j = i+1 : n
        Aux=Aux + A(i,j) * X(j)
    end
X(i)=(b(i)-Aux)/A(i,i)
end
endfunction