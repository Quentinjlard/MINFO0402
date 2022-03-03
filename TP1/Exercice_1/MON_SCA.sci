function [SCA] = MON_SCA(n)
// Description of MON_SCA(n)

    SCA = 0
    A = rand(n,1)*100
    disp(A)
    B = rand(n,1)*100
    disp(B)
        
    for i = 1:length(A)
        SCA = SCA + (A(i)*B(i))
    end
    
    disp(SCA)
    // Zone de vérification de la fonction
    //SCAMachine = A' * B
    //disp(SCAMachine)
endfunction
