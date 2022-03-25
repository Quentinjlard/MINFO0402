// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Fonctions du TP2

// Exercice 1

// Routine permettant de calculer le coef e[i] du vecteur E pour a[i],b[i],c[i],e[i-1] donnés
function res = calcE(a,b,c,e)
    res = -c/(a*e+b)
endfunction

// Routine permettant de calculer le coef f[i] du vecteur F pour a[i],b[i],c[i],e[i-1],f[i-1] donnés
function res = calcF(a,b,d,e,f)
    res = (d-a*f)/(a*e+b)
endfunction

// Résoud X pour la matrice tridiagonale M composée des vecteur A,B,C suivant l'équation MX=D
function X = RESOUTRI(A,B,C,D,n)
    E = zeros(n,1) // on initialise E, F et X des vecteurs nuls
    F = zeros(n,1)
    X = zeros(n,1)
    // Comme la résolution suit un principe de récurrence, on calcule d'abord les premiers termes donnés de chq vecteur
    E(1) = -C(1)/B(1)
    F(1) = D(1)/B(1)
    for i = 2:n-1
        E(i) = calcE(A(i),B(i),C(i),E(i-1))
        F(i) = calcF(A(i),B(i),D(i),E(i-1),F(i-1))
    end
    F(n) = calcF(A(n),B(n),D(n),E(n-1),F(n-1))
    X(n) = F(n) // d'après la déclaration de la suite, cf énoncé
    for i = n-1:-1:1
        // Il ne reste plus qu'a calculer la soluction de l'équation grace à E et F calculés précédemment
        X(i) = E(i)*X(i+1)+F(i)
    end
endfunction

// Résoud le produit matriciel MX où M est une matrice tridiagonale
function Y = PRODMATTRI(A,B,C,X,n)
    Y = zeros(n,1) // initialisation 
    Y(1) = B(1)*X(1) + C(1)*X(2) // calcul du premier terme
    for i = 2:n-1
        Y(i) = A(i)*X(i-1) + B(i)*X(i) + C(i)*X(i+1) // résolution par récurrence
    end
    Y(n) = A(n)*X(n-1) + B(n)*X(n) // calcul du dernier terme
endfunction

// Exercice 2

// Résolution matrice inverse (en supposant que A est inversible), grace à la méthode magique Gauss-Jordan
function X = MAGIQUE(A)
    //
endfunction

// Exercice 3

// La définition de ces 4 fonctions est donnée dans le tableau de l'énoncé. Elles sont exprimées en fonction du temps t

function y = Ua(t)
    y = t*sin(7*(%pi)*t)
endfunction

function y = Ub(t)
    y = (t-t^2)*(2+sin(9*%pi*t))
endfunction

function y = Fa(t)
    y = 49*(%pi^2)*t*sin(7*%pi*t) - 14*%pi*cos(7*%pi*t)
endfunction

function y = Fb(t)
    y = 4 + 2*sin(9*%pi*t) + (2*t-1)*18*%pi*cos(9*%pi*t) + (t-t^2)*((9*%pi)^2)*sin(9*%pi*t)
endfunction
