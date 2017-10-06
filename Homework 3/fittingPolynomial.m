%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

z = load('randomData.mat');
figure;
plot (z.x, z.y, 'b.', 'MarkerSize', 11);
hold on;
colores = hsv(5);
%cambiamos fila 4 a negro para mejor visualizaci�n
colores(4,:) = 0;
for i = 1:5
    %p  = polyfit(z.x, z.y, i);
    %faux = polyval(p, z.x);
    plot(z.x, polyval(polyfit(z.x, z.y, i), z.x), 'Color', colores(i, :));
end
legend('Datos', 'Grado 1', 'Grado 2', 'Grado 3', 'Grado 4', 'Grado 5', 'Location', 'southeast');
hold off;