%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('optionalData','x');
smoothed = rectFilt(x, 2);
figure;
plot(x(:,1),x(:,2),'b.','MarkerSize', 11);
hold on;
plot(smoothed(:,1),smoothed(:,2),'r');
%Para comparar con smooth descomentar
%plot(smooth(x, 11), 'g:*');
xlabel('Valor de x');
ylabel('Valor de Y');
title('Comparaci�n salida smooth (built-in function) respecto de rectFilt');
legend('Dato original','Suavizado', 'smooth(Matlab)','Location','NorthWest'); %Modifico posicion leyenda
hold off;