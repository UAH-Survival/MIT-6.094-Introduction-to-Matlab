%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%a
salary = {'Joe', 'Smith', 30000; 'Sarah', 'Brown', 150000; 'Pat', 'Jackson', 120000};
disp(salary);
%b
salary{2,2} = 'Meyer';
disp(salary);
%c
salary{3,3} = salary{3,3} + 50000;
disp(salary);