	// TP1_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Fonctions du TP

// EXERCICE 1

// Produit scalaire de 2 vecteurs
// Hypothèse : A et B sont 2 vecteurs de taille n
function SCA = MON_SCA(A,B,n)
    SCA = 0 // initialisation à 0
    for i = 1:n
        SCA = SCA + A(i)*B(i)
    end
endfunction

// EXERCICE 2

// Somme de 2 matrices 
// Hypothèse : A et B sont 2 matrices n,m
function C = SUMB(A,B,n,m)
    C = zeros(n, m) // initialisation C la matrice nulle n,m
    for i = 1:n
        for j = 1:m
            C(i,j) = A(i,j) + B(i,j)
        end
    end
endfunction

// Somme et différence de 2 matrices
// Hypothèse : A et B sont 2 matrices n,m
function [C,D] = SUMDIFF(A,B,n,m)
    C = zeros(n, m) // initilisation matrice nulle
    D = zeros(n, m) // idem
    for i = 1:n
        for j = 1:m
            // Somme élément par élément
            C(i,j) = A(i,j) + B(i,j)
            // Différence élément par élément
            D(i,j) = A(i,j) - B(i,j)
        end
    end
endfunction

// EXERCICE 3

// Produit de 2 matrices
// Hypothèse : soient A une matrice n,m et B une matrice m,q ; on calcule C = A*B tq C est une matrice n,q
function C = PRODMAT(A,B,n,m,q)
    C = zeros(n, q) // initialisation à 0n,q
    for i = 1:n // pour chaque lignes de A (vecteur 1,m)
        for j = 1:q // et pour chaque colonne de B (vecteur m,1)
            for k = 1:m
                // on calcule le produit scalaire des 2 vecteurs obtenus
                C(i,j) = C(i,j) + A(i,k)*B(k,j)
            end
        end
    end
endfunction

// EXERCICE 4

// Résoudre x pour A une matrice carré et b un vecteur de taille n tq Ax = b
// Hypothèse : A est triangulaire inférieure et inversible
function X = RESOUINF(A,b,n)
    X = zeros(1, n) // initialisation vecteur nul
    X(1) = b(1)/A(1,1) // calcul du premier terme (qui va nous permettre de calculer les autres)
    for i = 2:n
        tmp = 0 // variable temporaire
        for j = 1:(i-1)
            tmp = tmp + A(i,j)*X(j)
        end
        X(i) = (b(i) - tmp)/A(i,i)
    end
endfunction

// Résoudre x pour A une matrice carré et b un vecteur de taille n tq Ax = b
// Hypothèse : A est triangulaire supérieure et inversible
function X = RESOUSUP(A,b,n)
    X = zeros(1, n) // initialisation vecteur nul
    X(n) = b(n)/A(n,n) // calcul du dernier terme (qui va nous permettre de calculer les autres en remontant)
    for i = (n-1):-1:1
        tmp = 0 // variable temporaire
        for j = (i+1):n
            tmp = tmp + A(i,j)*X(j)
        end
        X(i) = (b(i) - tmp)/A(i,i)
    end
endfunction

// EXERCICE 5

// Réduction de Gauss sur un matrice A tq Ax = b
// Hypothèse : A est carré et inversible sans permutation de ligne ni pivot nul
function [A,b] = REDUC(A,b,n)
    for j = 1:n
        for i = (j+1):n
            // on détermine d'abord le pivot A(j,j)
            tmp = A(i,j)/A(j,j) // puis on calcule le facteur annulant le coefficient A(i,j) de la ligne que l'on traite
            for k = j:n
                // on applique le coefficient à chaque élément de la ligne...
                A(i,k) = A(i,k) - A(j,k)*tmp
            end
            b(i) = b(i) - b(j)*tmp // ...y compris au résultat de l'équation associée
        end
    end
endfunction

// Résolution d'une matrice inversible tq Ax = b
// Hypothèse : on admet que les conditions d'utilisation des fonctions précédentes sont respectées
function X = GAUSS(A,b,n)
    // Réduction de Gauss
    [S,y] = REDUC(A,b,n)
    // Remontée de Gauss
    X = RESOUSUP(S,y,n)
endfunction
