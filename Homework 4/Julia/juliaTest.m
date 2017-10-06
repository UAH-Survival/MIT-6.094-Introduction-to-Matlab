%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
%title('Conjunto de Julia. Z0 = .35, c = -0.297491+0.641051i, N = 100');
julia(.35,-.297491+.641051i,100);
%title('Conjunto de Julia. Z0 = 1, c = -.8+.156i, N = 100');
colormap('jet');
julia(1,-.8+.156i,100);
%title('Conjunto de Julia. Z0 = 1, c = -.4+.6i, N = 100');
colormap('gray');
julia(1,-.4+.6i,100);