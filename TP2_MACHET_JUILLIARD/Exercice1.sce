// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Exercice 1

pathname = get_absolute_file_path("Exercice1.sce");
exec(pathname+'\Fonction.sci',-1);

// Etape 1 :
// Verification de le fonction RESOUTRI avec une matrice statique de taille n=5

n = 5;
A = zeros(1,n);
B = zeros(1,n);
C = zeros(1,n);
D = zeros(1,n);

// On initialise A et C des vecteurs à n coef -1, B un vecteur à n coef 2 et D un vecteur à n coef 1
for j = 1 : n
    A(j) = -1;
    B(j) = 2;
    C(j) = -1;
    D(j) = 1;
end
// Ainsi A,B et C forment la matrice M tridiagonale

X = RESOUTRI(A,B,C,D,n); // X est solution de l'équation MX = D
disp(X)
PRODMATTRI(A,B,C,X,n); // Affiche MX
// Normalement, PRODMATTRI retourne une valeur très proche de D (puisqu'ils sont théoriquement égaux)

// Etape 2 :
// Même vérification avec une série de matrices aléatoires de taille 10 <= n < 100

min = 10;
max = 100;
for i = 1:3
    n = round(rand()*(max-min))+min
    A = zeros(1,n);
    B = zeros(1,n);
    C = zeros(1,n);
    D = zeros(1,n);
    for j = 1 : n
        A(j) = -1;
        B(j) = 2;
        C(j) = -1;
        D(j) = 1;
    end
    X = RESOUTRI(A,B,C,D,n);
    disp(X)
    PRODMATTRI(A,B,C,X,n);
end

// Etape 3 :
// Affichage des performances pour des matrices de tailles n = 10^i

n = 10; // initialisation de n
max  = 5; // nombre de tour total a effectuer
NN = zeros(1,max); // valeurs prises par n
EX = zeros(1,max); // temps d'execution de l'algo de résolution pour chaque matrice
ERR = zeros(1,max); // norme des marges d'erreur pour chaque matrice

for i = 1 : max
    NN(i) = n;
    
    // Préparation des matrices pour n donné
    A = zeros(1,n);
    B = zeros(1,n);
    C = zeros(1,n);
    D = zeros(1,n);
    for j = 1 : n
        A(j) = -1;
        B(j) = 2;
        C(j) = -1;
        D(j) = 1;
    end

    timer();
    X = RESOUTRI(A,B,C,D,n);
    EX(i) = timer(); // Récupère dans le tableau le temps d'execution nécessaire pour résoudre cette équation

    MX = PRODMATTRI(A,B,C,X,n);
    ERR(i) = norm(MX - D'); // Récupère dans le tableau la marge d'erreur entre la valeur approximée et la valeur théorique

    n = n * 10; // incrémentation de n
end

disp(NN)
disp(EX)
disp(ERR)

// Etape 4 : Tracer les courbes

scf(1); // ouverture de la fenètre graphique 1
plot(log10(NN),log10(EX),'b-'); // Courbe bleue donne le temps d'execution en fonction de la taille de la matrice
scf(2); // ouverture de la fenêtre graphique 2
plot(log10(NN),log10(ERR),'r-'); // Courbe rouge donne la marge d'erreur en fonction de la taille de la matrice
