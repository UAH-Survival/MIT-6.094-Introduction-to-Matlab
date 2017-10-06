%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

class = [15 25 55 115 144];
x = 2012:2016;
figure;
semilogy(x, class, 'ms', 'LineWidth', 1, 'MarkerSize', 10);
hold on;
xlabel('Año')
ylabel('Nº alumnos')
title('Alumnos en 6.094')
xlim('auto')
ylim('auto')
hold off;