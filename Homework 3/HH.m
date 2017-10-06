%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ruta = which('HH.m');
cd(ruta(1:end-4));
addpath('HH\');

[t,y] = ode45('ODE', [0,20],[0.5,0.5,0.5,-60]);
ySS = y(end,:); 
figure;
plot(t, y(:,end),'k');
xlabel('Tiempo (ms)');
ylabel('Voltaje de transmembrana (mV)');
title('Aproximaci�n al estado estacionario');
figure;
hold on;
for Vo=1:10
    ySS(end) = ySS(end) + 1; 
    [t,y] = ode45('ODE', [0,20], ySS);
    Vt = y(:,end);
    if (max(Vt) > 0)
        color = 'r';
    else
        color = 'k';
    end
    plot(t,Vt,color);
end
xlabel('Tiempo (ms)');
ylabel('Voltaje de transmembrana (mV)');
title('Comportamiento l�mite');
hold off;

