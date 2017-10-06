%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure
t = 0:pi/20:2*pi;
plot(t, sin(t))
hold on
plot(t, cos(t), 'r--')
title('Sin and Cos functions')
xlabel('Time(s)')
ylabel('Function wave')
legend('Sin', 'Cos')
xlim([0 2*pi])
ylim([-1.4 1.4])
hold off;