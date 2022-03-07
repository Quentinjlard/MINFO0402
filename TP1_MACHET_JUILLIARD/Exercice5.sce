// Decalaration principale
pathname=get_absolute_file_path("Exercice5.sce")
exec(pathname+'\Fonction.sci',-1);

// Initialisation varaible globale du programme
min = 5
max = 20

// Tirage aléatoire pour n entre min et le max
n = (rand()* (max - min + 1)) + min

// Création de la matrice par initalisation aléatoire
A1 = round(100*rand(n,n))
A2 =  [1,1,2; 1,2,1; -5,-8,-8]

// Création du vecteur colonne
b2 = round(100*rand(n,1))
b2 = [1,1,1]

//Appel de la fonction REDUC avec en parametres A,b,n
REDUC(A1,b1,n)

//Appel de la fonction GAUSS avec en parametres A,b,n
GAUSS(A1,b1,n)

//Appel de la fonction REDUC avec en parametres A,b,n
REDUC(A2,b2,3)

//Appel de la fonction GAUSS avec en parametres A,b,n
GAUSS(A2,b2,3)