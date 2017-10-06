%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

class = [15 25 55 115 144];
x = 2012:2016;
figure;
semilogy(x, class, 'ms', 'LineWidth', 1, 'MarkerSize', 10);
hold on;
xlabel('A�o')
ylabel('N� alumnos')
title('Alumnos en 6.094')
xlim('auto')
ylim('auto')
hold off;