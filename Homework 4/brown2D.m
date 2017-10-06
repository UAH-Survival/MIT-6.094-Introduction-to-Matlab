%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function brown2D(N)
puntos = zeros(N,2); %Punto por fila
figure;
L=plot(puntos(:,1), puntos(:,2), '.k', 'MarkerSize', 4);
xlim([-1,1]);
ylim([-1,1]);
axis square;
for i=1:1000
    r = 0.005*randn(size(puntos));
    puntos = puntos+r;
    pause(0.01);
    set(L,'xdata',puntos(:,1),'ydata',puntos(:,2));
end
end