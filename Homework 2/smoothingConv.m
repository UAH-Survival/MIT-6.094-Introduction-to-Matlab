%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %%
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('noisyData','x');
smoothed = rectFilt(x, 11);
figure;
plot(x,'b.','MarkerSize',11);
hold on;
plot(smoothed,'r');
%Comparativa con smooth
%plot(smooth(x, 11), 'g--);
xlabel('Índice');
ylabel('Valor del dato');
title('Suavizado de datos');
legend('Datos originales','Suavizado', 'Funcion defecto');
hold off;
