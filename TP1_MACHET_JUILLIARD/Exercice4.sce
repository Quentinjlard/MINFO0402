// Chargement des fonctions nécessaires
pathname = get_absolute_file_path("Exercice4.sce");
exec(pathname+'\Fonction.sci',-1);

// Initialisation des variables globales
min = 5;
max = 20;
n = round(rand()*(max - min + 1)) + min // min <= n <= max

// Création des matrices...
I3 = [1,0,0; 0,1,0; 0,0,1] // matrice identité 3,3
A1_INF = [1,0,0; 1,2,0; -5,-8,-8] // matrice triangulaire inférieure inversible 3,3
A1_SUP = [2,3,4; 0,1,1; 0,0,5] // matrice triangulaire supérieure inversible 3,3
A2_INF = zeros(n,n);
for i = 1:n
    for j = 1:i
        A2_INF(i,j) = round(rand()*50)+1;
    end
end
A2_SUP = zeros(n,n);
for i = 1:n
    for j = n:-1:i
        A2_SUP(i,j) = round(rand()*50)+1;
    end
end

// ... et des vecteurs colonnes associés
b1 = [1;2;3]
b2 = round(100*rand(n,1));

// Affichage des matrices aléatoires
disp(A2_INF);
disp(A2_SUP);
disp(b2);

// FONCTION RESOUINF(A,b,n)

RESOUINF(I3,b1,3) // reponse triviale = b1
XI1 = RESOUINF(A1_INF,b1,3)
A1_INF*XI1' // résultat attendu = b1
XI2 = RESOUINF(A2_INF,b2,n)
A2_INF*XI2' // résultat attendu = b2

// FONCTION RESOUSUP(A,b,n)

RESOUSUP(I3,b1,3) // reponse triviale = b1
XS1 = RESOUSUP(A1_SUP,b1,3)
A1_SUP*XS1' // résultat attendu = b1
XS2 = RESOUSUP(A2_SUP,b2,n)
A2_SUP*XS2' // résultat attendu = b2
