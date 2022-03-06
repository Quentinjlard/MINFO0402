// Decalaration principale
pathname=get_absolute_file_path("LanceurExercice5.sce")
exec(pathname+'\Fonction.sci',-1);

// Initialisation varaible globale du programme
min = 5
max = 20

// Tirage aléatoire pour n entre min et le max
n = (rand()* (max - min + 1)) + min

// Création de la matrice par initalisation aléatoire
A = round(100*rand(n,n))

// Création du vecteur colonne
b = round(100*rand(n,1))

//Appel de la fonction REDUC avec en parametres A,b,n
REDUC(A,b,n)

//Appel de la fonction GAUSS avec en parametres A,b,n
GAUSS(A,b,n)