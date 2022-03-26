// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Exercice 2

pathname = get_absolute_file_path("Exercice2.sce");
exec(pathname+'\Fonction.sci',-1);

n = 5; // taille de la matrice
min = 0; // borne inférieure de l'intervalle de valeurs aléatoires
max = 10; // borne supérieure de l'intervalle de valeurs aléatoires

// Matrice carrée initiale
A = rand(n, n)*(max-min)+min

// Calcul de l'inverse de A
C = MAGIQUE(A,n);

// Affichage de C arrondi au millième
disp(round(1000*C)/1000)

// Calcul de l'inverse de A par scilab
A=inv(A);

// Comparaison des résultats obtenus
disp(round(1000*A)/1000)
