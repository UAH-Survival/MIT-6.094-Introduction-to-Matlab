%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N = 50;
loopTest(N);

function loopTest(N)
    for n = 1:N
        if (or(mod(n,2), mod(n,3)) == 0)
            fprintf('%d es divisible entre 2 y 3\n', n)
        elseif (mod(n,2) == 0)
            fprintf('%d es divisible entre 2\n', n)
        elseif (mod(n,3) == 0)
            fprintf('%d es divisible entre 3\n', n)
        else
            fprintf('%d NO es divisible entre 2 y 3\n', n)
        end
    end
end