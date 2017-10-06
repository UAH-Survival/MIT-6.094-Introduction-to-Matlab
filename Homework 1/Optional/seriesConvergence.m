%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%b
p = 0.99
k = 0:1000
%c
geomSeries = p.^k
%d
G = 1/(1-p)
%e
var = 0*ones(max(k), 1)
figure;
plot([0 max(k)], G*ones(1, 2), 'r');
hold on
%limites a prubea y error, revisar
%f
plot(k, cumsum(geomSeries), 'b')
%g
xlabel('Index')
ylabel('Sum')
legend('Infinite sum', 'Finite sum')
title('Convergence of geometric series with p=0.99')
hold off %Terminamos grafica
%j
p = 2
n = 1:500
%k
pSeries = (n.^p).^-1
%l
P = pi^2/6
%m
figure;
plot([0 max(n)], P*ones(1, 2), 'r')
hold on
plot(n, cumsum(pSeries))
xlabel('Index')
ylabel('Sum')
title('Convergence of p-series with p=2')
legend('Infinite sum', 'Finite sum')
%modifico los limites de y para no interferir con la leyenda
ylim([1 1.8])
hold off;