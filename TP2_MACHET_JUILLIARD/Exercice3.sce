// TP2_MINF0402_MACHET_JUILLIARD
// MACHET Corentin
// JUILLIARD QUENTIN
// Exercice 3


pathname = get_absolute_file_path("Exercice3.sce");
exec(pathname+'\Fonction.sci',-1);

// t*sin(7*%pi*t)
clf;
NN=2000;
lt=linspace(0,1,NN);
ly=zeros(length(lt));
for i = 1 : length(lt)
    ly(i)=Ua(lt(i));
end
plot(lt,ly)

// (t-t^2)*(2+sin(9*%pi*t))
clf;
NN=2000;
lt=linspace(0,1,NN);
ly=zeros(length(lt));
for i = 1 : length(lt)
    ly(i)=Ub(lt(i));
end
plot(lt,ly)

// 49*(%pi^2)*t*sin(7*%pi*t) - 14*%pi*cos(7*%pi*t)
clf;
NN=2000;
lt=linspace(0,1,NN);
ly=zeros(length(lt));
for i = 1 : length(lt)
    ly(i)=Fa(lt(i));
end
plot(lt,ly)

// 4 + 2*sin(9*%pi*t) + (2*t-1)*18*%pi*cos(9*%pi*t) + (t-t^2)*((9*%pi)^2)*sin(9*%pi*t)
clf;
NN=2000;
lt=linspace(0,1,NN);
ly=zeros(length(lt));
for i = 1 : length(lt)
    ly(i)=Fb(lt(i));
end
plot(lt,ly)

//Faire matrice tridiagonale avec 2 (au milieu ) et -1 (sup et inf a 2)

//
N = 30;
h = 1/(N+1);

A = zeros(1,N);
B = zeros(1,N);
C = zeros(1,N);
D = zeros(1,N);

for j = 1 : N
    A(j) = -1;
    B(j) = 2;
    C(j) = -1;
    D(j) = 1;
end

X = RESOUTRI(A,B,C,D,N);

min = 1;
max = N;
i = round(rand()*(max - min + 1)) + min // min <= i <= max

lT=zeros(i);
lD=zeros(i);

for j = 1 : N
    lT[j] = i*h;
    lD[j] = h*h*lT[j];
end    
