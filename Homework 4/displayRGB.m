%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function im = displayRGB(filename)

if((filename(find(filename=='.', 1, 'last')+1:end))~= 'jpg')
    filename = 'RGB/formatError.jpg';
end

original = imread(filename);
dimensiones = size(original);
relacion = dimensiones(2)/dimensiones(1); 
if relacion > 1
    long = 800;
    anch = round(long/relacion);
elseif relacion <= 1 
    anch = 800;
    long = round(anch*relacion);
end
%columnas = linspace(1,dimensiones(2),long);
%filas = linspace(1,dimensiones(1),anch);
[Xq,Yq]=meshgrid(linspace(1,dimensiones(2),long), linspace(1,dimensiones(1),anch));
[X,Y]=meshgrid(1:dimensiones(2), 1:dimensiones(1));
interpolada = zeros(anch, long, dimensiones(3));
for i=1:dimensiones(3)
    interpolada(:,:,i) = interp2(X,Y,double(original(:,:,i)),Xq,Yq,'cubic');
end
interpolada = uint8(interpolada);
R = zeros(anch, long, dimensiones(3));
R(:,:,1) = interpolada(:,:,1);
G = zeros(anch, long, dimensiones(3));
G(:,:,2) = interpolada(:,:,2);
B = zeros(anch, long, dimensiones(3));
B(:,:,3) = interpolada(:,:,3);
im = [interpolada, R; G, B];

end