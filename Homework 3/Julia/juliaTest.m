%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M = julia(1,-.297491+.641051i,100);
figure;
imagesc(linspace(-1,1,500), linspace(-1,1,500), atan(0.1*M));
title('Conjunto de Julia. Z0 = 1, c = -0.297491+0.641051i, N = 100');
xlabel('Re(z)');
ylabel('Im(z)');
colormap('jet');
axis xy;
figure;
M = julia(.35,-.297491+.641051i,250);
imagesc(linspace(-.35,.35,500), linspace(-.35,.35,500), atan(0.1*M));
title('Conjunto de Julia. Z0 = 0.35, c = -0.297491+0.641051i, N = 250');
xlabel('Re(z)');
ylabel('Im(z)');
colormap('jet');
axis xy;