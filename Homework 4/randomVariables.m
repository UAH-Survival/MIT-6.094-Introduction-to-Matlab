%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r = 2 + 5.*randn(5000,1);
fprintf('La media del conjunto de %d valores estoc�sticos es %.4f y su desviaci�n %.4f.\n', length(r), mean(r), std(r));