%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

R = poissrnd(5,1,1000); % lambda 5, dimensiones 1x10000
[histog, centers] = hist(R,0:max(R)); %Histograma de R con contenedores
                                         %con centro de 0 a max(R): uno
                                         %para cada valor posible de R
histog = histog/sum(histog);    %Normalizar suma entre 0 y 1

figure;
bar(centers, histog);

hold on;
plot(centers, poisspdf(centers, 5), 'r');
title('Distribuci�n de Poisson e histograma observado');
ylabel('Probabilidad');
xlabel('Valor');
%set(gca,'XTick',0:max(R)); %Poner marca a cada barra
legend('Histograma experimental', 'Distribuci�n de Poisson');