%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
hold on;
colores=jet(5);

for i = 1:5
	[x, y] = getCircle([0 0], i);
	plot(x, y, 'Color', colores(i, :), 'linewidth', 12-2*i);
end
%Modificamos eje por mejor visualizaci�n
ylim([-5.5 5.5]);
axis equal;
hold off;