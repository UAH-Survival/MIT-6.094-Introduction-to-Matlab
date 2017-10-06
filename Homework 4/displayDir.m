%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function displayDir
    a = dir;
    for i = 1:length(a)
        if ~a(i).isdir
            fprintf('El fichero %s contiene %d bytes\n', a(i).name, a(i).bytes);
        end
    end
end