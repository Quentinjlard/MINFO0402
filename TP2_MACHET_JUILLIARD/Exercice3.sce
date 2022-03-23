pathname = get_absolute_file_path("Exercice1.sce");
exec(pathname+'\Fonction.sci',-1);

clf;
NN=2000;
x=linspace(0,1,NN);
y=sin(x);
plot(x,y)