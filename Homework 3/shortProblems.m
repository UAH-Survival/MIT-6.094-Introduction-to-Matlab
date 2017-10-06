%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Ejercicio 1: Sistema linear');
A = [3 6 4; 1 5 0; 0 7 7];
b = [1; 2; 3];
sol= A\b;
fprintf('La solución al sistema es a=%f, b=%f, c=%f\n', sol);
fprintf('Tenemos un error en a de %d; en b de %d y en c de %d\n', abs(A*sol - b));

disp('Ejercicio 2: Numerical integration.');
x=0:0.01:5;
funcion=x.*exp(-x/3);
intTrapz = trapz(x, funcion)
intQuad = integral(@(x)(x.*exp(-x/3)),0,5)
analitico = -24*exp(-5/3)+9
errorTrapz = abs(intTrapz - analitico)
errorQuad = abs(intQuad - analitico)

disp('Ejercicio3: Cálculo de inversa');
matriz = [1 2; 3 4];
fprintf('Al hacer la inversa de la matriz:\n')
disp(matriz);
fprintf('obtenemos:\n');
disp(inv(matriz));
fprintf('La matriz por su inversa da:\n');
disp(matriz*inv(matriz));
fprintf('Inversa por matriz da:\n');
disp(inv(matriz)*matriz);
