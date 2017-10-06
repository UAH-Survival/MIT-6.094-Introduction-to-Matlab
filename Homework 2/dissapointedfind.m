%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = rand(1, 100);
desiredVal = 0.5;
indice = findNearest(x, desiredVal);
fprintf('El valor más cercano a %.2f en el vector dado, es %f que se encuentra en la posición %d\n', desiredVal, x(indice), indice);

function ind = findNearest(x, desiredVal)
    y = sort(x);
    ind = find(y>desiredVal,1);
    if abs(y(ind)-desiredVal) > abs(y(ind-1)-desiredVal)
        ind = ind-1;
    end
   ind = find(x==y(ind),1);   
end