// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Exercice 2

pathname = get_absolute_file_path("Exercice2.sce");
exec(pathname+'\Fonction.sci',-1);

//n est le nombre de colonne(s) et de ligne(s) de la matrice
n=5;
//La borne supérieure des nombres aléatoires pour la matrice
max=10;
//La borne inférieure des nombres aléatoires pour la matrice
min=0;

//Création de la matrice colonne avec des nombres aléatoires
A=rand(n, n)*(max-min)+min
//Appel de la fonction MAGIQUE qui calcul les matrices colonne A et B
C=MAGIQUE(A, n);

//Arrondir les valeurs au millième
C=round(1000*C)/1000;
//Affichage de la matrice C
disp(C)
//Calcul de l'inverse de A
A=inv(A);
//Arrondir les valeurs au millième
A=round(1000*A)/1000;
//Vérification
disp(A)
