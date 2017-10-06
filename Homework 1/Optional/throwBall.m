%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%b
h = 1.5
g = 9.8
v = 4
angle = 45
%c
t = 0:1/10000:1;
%d
x = v*cos(angle*pi/180)*t;
y = h+v*sin(angle*pi/180)*t - 0.5*g*t.^2;
%e
fprintf('The ball hits the ground at a distance of %f meters\n', ((x((find(y<0, 1)))+x((find(y<0, 1))-1))/2))
%f
figure;
plot(x, y);
xlabel('Distance (m)')
ylabel('Ball Height (m)')
title('Ball Trajectory')
hold on;
plot([0 max(x)], 0*ones(1, 2), 'k--')
clear;