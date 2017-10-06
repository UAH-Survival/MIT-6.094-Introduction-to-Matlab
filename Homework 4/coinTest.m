%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ncara = round((rand(1,5000)));   %Se considera si vale 0.5 o m�s
ncaras = cumsum(ncara);  %N�mero de caras acumuladas
probability = ncaras./(1:5000);  %Prob. = casos_favorables/totales
figure;
plot((1:5000), probability, 'k');
hold on;
plot([1,5000], 0.5*ones(1,2), 'r-');
title('Probabilidad de cara en n lanzamientos de una moneda');
xlabel('N�mero de lanzamientos');
ylabel('Probabilidad de cara');
legend('Probabilidad lanzamiento', 'Moneda ideal');
ylim([0,1]);
hold off;