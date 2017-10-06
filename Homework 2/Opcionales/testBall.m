%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %%
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0:5:90;
%Reservo espacio para mejorar la velocidad del programa
throwB = 1:length(theta);
for i = 1:length(theta)
	throwB(i) = throwBall(10, theta(i));
end

figure;
plot(theta, throwB, 'k', 'linewidth', 1);
xlabel('Theta');
ylabel('Distancia (m)');
title('Prueba de lanzamiento de bola');