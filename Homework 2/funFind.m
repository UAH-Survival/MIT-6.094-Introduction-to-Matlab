%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vector = rand(1, 100);
desiredVal = rand;
indice = findNearest(vector, desiredVal);
fprintf('El valor más cercano a %.2f en el vector dado, es %f que se encuentra en la posición %d\n', desiredVal, vector(indice), indice);
matriz = rand(randi(10), randi(5));
desiredVal = rand;
indice = findNearest(matriz, desiredVal);
fprintf('El valor más cercano a %.2f en el vector dado, es %f que se encuentra en la posición %d\n', desiredVal, matriz(indice), indice);

function ind = findNearest(x, desiredVal)
    distance = abs(desiredVal - x);
    distanceVec = distance(:);
    ind = find(distance == min(distanceVec), 1);
end


