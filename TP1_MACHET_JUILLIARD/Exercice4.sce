// Decalaration principale
pathname=get_absolute_file_path("Exercice4.sce")
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
b1 = round(100*rand(n,1))
b2 = [1,1,1]

//Appel de la fonction RESOUINF avec en parametres A,b,n
RESOUINF(A1,b1,n)

//Appel de la fonction RESOUSUP avec en parametres A,b,n
RESOUSUP(A1,b1,n)

//Appel de la fonction RESOUINF avec en parametres A,b,n
RESOUINF(A2,b2,3)

//Appel de la fonction RESOUSUP avec en parametres A,b,n
RESOUSUP(A2,b2,3)