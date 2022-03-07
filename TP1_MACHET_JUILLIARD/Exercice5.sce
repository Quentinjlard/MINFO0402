// Chargement des fonctions nécessaires
pathname = get_absolute_file_path("Exercice5.sce");
exec(pathname+'\Fonction.sci',-1);

// Initialisation des variables globales
min = 5;
max = 20;
n = round(rand()*(max - min + 1)) + min // min <= n <= max

// Création des matrices...
A1_SUP = [2,3,4; 0,1,1; 0,0,5] // matrice triangulaire supérieure inversible 3,3
A1 =  [1,1,2; 1,2,1; -5,-8,-8] // matrice inversible 3,3
A2 = zeros(n,n);
for i = 1:n
    for j = 1:n
        A2(i,j) = round(rand()*50)+1;
    end
end

// ... et des vecteurs colonnes associés
b1 = [1;1;1]
b2 = round(100*rand(n,1));

// Affichage des matrices aléatoires
disp(A2);
disp(b2);

// FONCTION REDUC(A,b,n)

REDUC(A1_SUP,b1,3) // reponse triviale = A1_SUP, b1
REDUC(A1,b1,3)
REDUC(A2,b2,n)

// FONCTION GAUSS(A,b,n)
X = GAUSS(A1,b1,3)
A1*X' // résultat attendu = b1
X2 = GAUSS(A2,b2,n)
A2*X2' // résultat attendu = b2
