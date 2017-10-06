%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dxdt = ODE(~, x)
    %Asignamos constantes
    C = 1;
    Gk = 36;
    Gna = 120;
    Gl = 0.3;
    Ek = -72;
    Ena = 55;
    El = -49.4;
    n = x(1);
    m = x(2);
    h = x(3);
    V = x(4);
    %Reservamos espacio
    dxdt = zeros(4,1);
    %Metemos ecuaciones
    dxdt(1) = (1-n)*alphan(V) - n*betan(V);
    dxdt(2) = (1-m)*alpham(V) - m*betam(V);
    dxdt(3) = (1-h)*alphah(V) - h*betah(V);
    dxdt(4) = -1/C * (Gk*n^4*(V-Ek)+Gna*m^3*h*(V-Ena)+Gl*(V-El));

end