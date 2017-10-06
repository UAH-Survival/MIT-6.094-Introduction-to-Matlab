%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingenier�a de redes y servicios %%
%%      C�digo realizado por:      %% 
%%   Juan Francisco Garc�a G�mez   %%
%%     Iago Mart�nez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%b
load('classGrades.mat')
%c
%me gustaria saber si se puede automatizar la obtencion del nombre de la
%variable
namesAndGrades(1:5,1:end)
%d
grades = namesAndGrades(1:end, 2:end);
%e
%e.i
mean(grades)
%e.ii
meanGrades = nanmean(grades)
%f
%f.i
meanMatrix = ones(15,1)*meanGrades
%f.ii
curvedGrades = 3.5*(grades./meanMatrix);
%f.iii
nanmean(curvedGrades);
%f.iv
curvedGrades(find(curvedGrades>5)) = 5;
%g
%g.i
totalGrade = ceil(nanmean(curvedGrades, 2));
letters = 'FDCBA';
letterGrades = letters(totalGrade);
fprintf('Grades: %s\n', letterGrades);