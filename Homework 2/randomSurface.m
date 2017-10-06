%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Z0 = rand(5,5);
[X0, Y0] = meshgrid(1:5);
[X1, Y1] = meshgrid(1:0.1:5);
%Si se quisiera ver el antes de la interpolación descomentar el siguiente
%bloque
%{

figure;
surf(X0, Y0, Z0, 'EdgeColor', 'k');
colormap('hsv')
colorbar;
caxis([0, 1]);
%}

Z1 = interp2(X0, Y0, Z0, X1, Y1, 'cubic');
figure;
surf(X1, Y1, Z1, 'EdgeColor', 'k');
colormap('hsv')
shading('interp')
hold on;
contour(X1, Y1, Z1, 15);
colorbar;
caxis([0, 1]);
%Para una representación idéntica a la memoria, modificar con:
%xlim([1,5]);
%ylim([1,5]);
%zlim([-0.2, 1.2])