// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Exercice 3

pathname = get_absolute_file_path("Exercice3.sce");
exec(pathname+'\Fonction.sci',-1);

// INITIALISATION

n = 2000;
min = 0;
max = 1;
lt = linspace(min,max,n); // liste des t, ie 2000 valeurs sur l'intervalle [0,1]
// Remarque : lt correspond aux valeurs en abscisse
ly = zeros(length(lt)); // on prépare une liste vide de même taille pour les valeurs en ordonnée

// ETAPE 1, les fonctions Ua et Fa

for N = 10:10:50 // N = 10, 20, 30, 40, 50
    // Question 1 :
    // Affichage de Ua(t)
    clf(); // ouvre et/ou nettoie une fenetre graphique
    for i = 1 : length(lt)
        ly(i)=Ua(lt(i)); // on calcul pour chaque t, son image en fonction de Ua
    end
    plot(lt,ly) // on affiche ts les points (ti, yi)
    sleep(000); // attendre 1s
    
    // Question 2 :
    h = 1/(N+1)
    A = zeros(1,N);
    B = zeros(1,N);
    C = zeros(1,N);
    Da = zeros(1,N);
    T = zeros(N,1);
    for i = 1:N
        A(i) = -1;
        B(i) = 2;
        C(i) = -1;
        T(i) = i*h; // formule de l'énoncé
        Da(i) = (h^2)*Fa(T(i)); // idem
    end
    // Affichage de la solution de MX=D
    Y = RESOUTRI(A,B,C,Da,N);
    plot(T,Y,'r+') // on affiche ts les points (Ti, Yi) en + rouge
    sleep(6000); // attendre 6s
end

// ETAPE 2, les fonctions Ub et Fb
// le commentaire du code est le même qu'à l'étape 1

for N = 10:10:50
    // Question 1 :
    // Affichage de Ub(t)
    clf();
    for i = 1 : length(lt)
        ly(i)=Ub(lt(i));
    end
    plot(lt,ly)
    sleep(1000);
    
    // Question 2 :
    h = 1/(N+1)
    A = zeros(1,N);
    B = zeros(1,N);
    C = zeros(1,N);
    Db = zeros(1,N);
    T = zeros(N,1);
    for i = 1:N
        A(i) = -1;
        B(i) = 2;
        C(i) = -1;
        T(i) = i*h;
        Db(i) = (h^2)*Fb(T(i));
    end
    // Affichage de la solution de MX=D
    Y = RESOUTRI(A,B,C,Db,N);
    plot(T,Y,'r+')
    sleep(6000);
end
