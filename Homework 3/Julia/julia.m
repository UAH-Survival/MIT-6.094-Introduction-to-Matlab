%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function M = julia(zMax, c, N)
    zMax_x = linspace(-zMax,zMax,500);
    [R, I] = meshgrid(zMax_x);
    Z = R+I*1i;
    M = zeros(size(Z));
    for i=1:length(Z(:))
        M(i) = escapeVelocity(Z(i), c, N);
    end
end