%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

colores = 'bkryg';
figure
hold on;
for i = 1:5
    if i<4
        [x, y] = getCircle([(i-2) 0], 0.47);
    else
        [x, y] = getCircle([(i-4.5) -0.5], 0.47);
    end
	plot(x, y, 'Color', colores(i), 'linewidth', 2);
end
axis equal;
hold off;