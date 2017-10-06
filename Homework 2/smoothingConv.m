%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('noisyData','x');
smoothed = rectFilt(x, 11);
figure;
plot(x,'b.','MarkerSize',11);
hold on;
plot(smoothed,'r');
%Comparativa con smooth
%plot(smooth(x, 11), 'g--);
xlabel('�ndice');
ylabel('Valor del dato');
title('Suavizado de datos');
legend('Datos originales','Suavizado', 'Funcion defecto');
hold off;
