%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %%
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function distance = throwBall(v, theta)
	h = 1.5;
	g = 9.8;
	t = linspace(0, 10, 10000);
    
	x = v*cos(theta*(pi/180))*t;
	y = h + v*sin(theta*(pi/180))*t-0.5*g*t.^2;

	distance = ((x((find(y<0, 1))) + x((find(y<0, 1))-1))/2);

	if isempty(distance)
		fprintf('La pelota no ha alcanzado el suelo durante 10 segundos en %f\n', theta);
		distance = nan;
	end
end