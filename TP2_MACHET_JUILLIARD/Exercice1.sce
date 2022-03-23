pathname = get_absolute_file_path("Exercice1.sce");
exec(pathname+'\Fonction.sci',-1);

// 
//Etape 3 : Faire plusieurs test avec boucle
//timer()
n3 = 10;
max  = 6;

NN = zeros(1,max);
EX = zeros(1,max);
ERR = zeros(1,max);

for i = 1 : max

    NN(i) = i;

    A = zeros(1,n3);
    B = zeros(1,n3);
    C = zeros(1,n3);
    D = zeros(1,n3);

    for j = 1 : n3
        A(j) = -1;
        B(j) = 2;
        C(j) = -1;
        D(j) = 1;
    end

    timer();
    X = RESOUTRI(A,B,C,D,n3);
    EX(i) = timer(); //Recuperer dans le tableau
    
    MX = PRODMATTRI(A,B,C,X,n3);

    ERR(i) = norm(MX - D');

    n3 = n3 * 10;
end

disp(NN)
disp(EX)
disp(ERR)

scf(1);
plot(NN,log10(EX),'b-') //Log du temps d exec
scf(2);
plot(NN,log10(ERR),'r-') //Log de la marche d erruer


//-------------------------------------------------------------------------------------------------


//M =  zeros(n,n);
//
//for i = 1 : n
//    for j = 2 : n
//        if(i == 1 && j == 2 )
//            M(i,j-1) = B(i);
//            M(i,j) = C(i);
//        end
//        if(i == j && i <> n)
//             M(i,j-1) = A(i);
//             M(i,j) = B(i);
//             M(i,j+1) = C(i);
//             j = j - 1;
//         end
//         if(i == j  && i == n )
//             M(i,j-1) = A(i);
//             M(i,j) = B(i);
//             j = j -1;
//         end
//     end
// end
