%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0:pi/10000:2*pi;
figure;
plot(x, sin(x), 'r');
xlim([0 2*pi]);
set(gca, 'XTick', [0 pi 2*pi], 'xticklabel', {'0', '1', '2'}, 'ytick', -1:.5:1);
grid on;
set(gca, 'xcolor', 'c', 'ycolor', 'g', 'color', 'k');
set(gcf, 'color', [.3 .3 .3]);
title('Seno de 0 a 2\pi','fontsize', 14, 'fontweight','bold','color','w');
xlabel('Valores de x (en múltiplos de \pi)','fontsize',12,'color','c');
ylabel('Sin(X)','fontsize',12,'color','g');