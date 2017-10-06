%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
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