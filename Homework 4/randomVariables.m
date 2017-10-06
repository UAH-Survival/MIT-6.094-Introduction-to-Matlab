%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %%
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r = 2 + 5.*randn(5000,1);
fprintf('La media del conjunto de %d valores estocásticos es %.4f y su desviación %.4f.\n', length(r), mean(r), std(r));