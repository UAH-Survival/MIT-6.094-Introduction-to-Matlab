%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%b
original = 'This is my top secret message!'
key = randperm(length(original))
%vec = 1:length(original)
%c
%escoger encoded(key) = original(vec)
encoded = original(key)
%d
temp = [key; 1:length(original)].';
temp = sortrows(temp)
iv = temp(:,2);
clear temp;
decoded = encoded(iv)
%e
fprintf('Original: %s\n', original);
fprintf('Encoded: %s\n', encoded);
fprintf('Decoded: %s\n', decoded);
%f
%flag = strcmp(original, decoded);
%ponemos strcmp en fprintf y nos ahorramos la variable flag
fprintf('Decoded correctly (1 true, 0 false): %d\n', strcmp(original, decoded));