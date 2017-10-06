%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function M = julia(zMax, c, N)
    temp = linspace(-zMax,zMax,500);
    [R, I] = meshgrid(temp);
    Z = R+I*1i;
    M = N*ones(size(Z));
    for i=1:N
        Z = Z.^2+c;
        indices = find(abs(Z) > 2);
        M(indices) = i;
        Z(indices) = NaN;
        imagesc(linspace(-1,1,500), linspace(-1,1,500), atan(0.1*M));
        axis xy;
        drawnow;
    end
end