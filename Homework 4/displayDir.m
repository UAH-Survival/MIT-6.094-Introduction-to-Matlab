%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function displayDir
    a = dir;
    for i = 1:length(a)
        if ~a(i).isdir
            fprintf('El fichero %s contiene %d bytes\n', a(i).name, a(i).bytes);
        end
    end
end