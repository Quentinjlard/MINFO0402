function X=RESOUINF(A,b,n)
// Description of RESOUINF(A,b,n)
// RESOUINF permet d'afficher uniquement les valeurs inférieur de la matrice
// les valeurs situé dans le triange supérieur sont remplacer par 0

    for i = 1 : n                           // Parcours la totalité de la ligne
        Aux=0                               // Initialisation de la varaible AUX à 0
        for j = 1 : (i-1)                   // Parcours uniquement la ligne de i et s'arrete quand j = i
            Aux=Aux + A(i,j) * X(j)         //
        end                                 //Fin de boucle
        X(i)=(b(i)-Aux)/A(i,i)              //
    end                                     //Fin de boucle
endfunction                                 //Fin de fonction

function X=RESOUSUP(A,b,n)
// Description of RESOUSUP(A,b,n)
// RESOUSUP permet d'afficher uniquement les valeurs supérieur de la matrice
// les valeurs situé dans le triange inférieur sont remplacer par 0.

X(n)=b(n)/A(n,n)
    for i=(n-1): -1 :1                  //Boucle décressive de -1 en -1 partant de n-1 à 0
        aux=0                           // Initialisation de la varaible AUX à 0
        for j= (i+1):n                  // Boucle partant de i+1 jusqu'à n
            aux=aux+ A(i,j)*X(j)        //
        end                             //Fin de boucle
        X(i)= (b(i)-aux)/A(i,i)         //
    end                                 //Fin de boucle
endfunction                             //Fin de fonction