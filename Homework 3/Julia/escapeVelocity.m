%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function n = escapeVelocity(z0, c, N)
    zi=z0;
    for i = 1:N
        n = i;
        if abs(zi)> 2
            return
        else
            zi = zi^2 + c;
        end
    end
end