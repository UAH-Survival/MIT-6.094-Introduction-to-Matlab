%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vector = rand(1, 100);
desiredVal = rand;
indice = findNearest(vector, desiredVal);
fprintf('El valor m�s cercano a %.2f en el vector dado, es %f que se encuentra en la posici�n %d\n', desiredVal, vector(indice), indice);
matriz = rand(randi(10), randi(5));
desiredVal = rand;
indice = findNearest(matriz, desiredVal);
fprintf('El valor m�s cercano a %.2f en el vector dado, es %f que se encuentra en la posici�n %d\n', desiredVal, matriz(indice), indice);

function ind = findNearest(x, desiredVal)
    distance = abs(desiredVal - x);
    distanceVec = distance(:);
    ind = find(distance == min(distanceVec), 1);
end


