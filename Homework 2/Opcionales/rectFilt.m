%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %%
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function smoothed = rectFilt(x, width)
    if ~isvector(x)
        x0 = x(:,1);
        y0 = x(:,2);
        smoothed = [x0, zeros(length(x0),1)];
        % Para cada valor de x, hacer la media buscando los valores de y correspondientes a las x en el intervalo [x-width/2, x+width/2]
        for i=1:length(x0) 
            smoothed(i,2) = mean(y0(x0 > (x0(i)-width/2) & x0 < (x0(i)+width/2)));
        end
    else
        if mod(width,2) == 0
            disp('Anchura incrementada para trabajo simétrico');
            width = width+1;
        end
        % Extremo del intervalo
        % Realizar media movil con convolucion
        % Seleccionar 'width' valores en las posiciones
        % [-width, width] centradas en el valor n y multiplicarlas
        % por 1/width para hallar la media
        % La opcion 'same' devuelve las length(x) muestras centrales, que corresponden a las medias en las que el intervalo h esta centrado en x(n)
        smoothed = conv(x,1/width*ones(1,width),'same');  
        smoothed([1:floor(width/2),end-floor(width/2)+1:end]) = smoothed([1:floor(width/2),end-floor(width/2)+1:end]).*width./[floor(width/2)+1:width-1,width-1:-1:floor(width/2)+1];
    end
end