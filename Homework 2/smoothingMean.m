%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %%
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = load('noisyData.mat');
x = y.x;
width = 11;
plot(x, '.', 'MarkerSize', 11);
hold on;
smoothed = rectFilt(x, width);
plot(smoothed, 'r');
xlabel('�ndice');
ylabel('Valor del dato');
title('Suavizado de datos');
legend('Datos originales','Suavizado');
hold off;

function smoothed = rectFilt (x, width)
smoothed = 0*ones(length(x),1);
    if mod(width, 2) == 0
        width = width+1;
        disp('Anchura incrementada para trabajo sim�trico');
    end
    for j = 1:width/2
        smoothed(j) = mean(x(1:j+j));
    end
    for i = (((width-1)/2)+1):length(x)-(((width-1)/2)+1)
        smoothed(i) = mean(x(i-((width-1)/2):i+((width-1)/2)));
    end
    for k = (length(x)-((width-1)/2)):length(x)
        smoothed(k) = mean(x((k-(length(x)-k)):length(x)));
    end
end