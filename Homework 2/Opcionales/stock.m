%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dat = load('googlePrices.mat');

presupuesto = 100000;
dinerofinal = tradeStock(presupuesto, dat.price, dat.lows, dat.peaks);
fprintf('El saldo final es de $%.2f\n', dinerofinal)
%Meter beneficio

function endValue = tradeStock(initialInvestment, price, buy, sell)
    coste = 12.95;
    acciones = 0;
    endValue = initialInvestment;
    eventos = sort([buy; sell],'ascend').';
    for i = eventos %Recorro la linea temporal
        %Eval�o mediante find si es compra o venta
        if find(buy == i)
            acciones = acciones + floor((endValue - coste)/price(i));
            if acciones <= 0
                continue; % no tiene sentido seguir el bucle sin acciones
            end
            endValue = endValue - (acciones*price(i)+coste);
        else %al no ser compra, necesariamente es venta
            if ((acciones*price(i) - coste) > 0)
                endValue = endValue + acciones*price(i) - coste;
                acciones = 0;
            end
        end
    end
    endValue = endValue + acciones*price(end);
end