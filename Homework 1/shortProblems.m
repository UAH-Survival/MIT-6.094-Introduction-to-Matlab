%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ingeniería de redes y servicios %%
%%      Código realizado por:      %% 
%%   Juan Francisco García Gómez   %%
%%     Iago Martínez Colmenero     %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%1. Scalar variables
a = 10
b = 2.5e23
c = 2+3i
d = exp(j*2*pi/3)
%2. Vector variables
aVec = [3.14 15 9 26]
bVec = [2.71; 8; 28; 182]
cVec = (5:-0.2:-5)
dVec = logspace(0,1,100)
eVec = 'Hello'
%3. Matrix variables
aMat = 2*ones(9)
bMat = diag([1:1:4 5:-1:1])
cMat = reshape(1:100,10,10)
dMat = nan*ones(3,4)
eMat = [13 -1 5; -22 10 -87]
fMat = floor((6*rand([3,5])-3*ones(3,5)))
%4. Scalar equations
x = 1/(1+exp(-(a-15)/6))
y = (sqrt(a)+b^(1/21))^pi
z = log(real((c+d)*(c-d))*sin(a*pi/3))/(c*conj(c))
%5. Vector equations
xVec = (sqrt(2*pi*2.5^2))^-1 * exp(-cVec.^2/(2*2.5^2))
yVec = sqrt((aVec.').^2+bVec.^2)
zVec = log10(dVec.^-1)
%6. Matriz equations
xMat = (aVec*bVec)*aMat^2
yMat = bVec*aVec
zMat = det(cMat)*(aMat*bMat).' %determinante de cMat nulo, por lo que este resultado sera siempre 0
%7. Common functions and indexing
%a
cSum = sum(cMat)
%b
eMean = mean(eMat.').'
%c
%eMat(1:size(eMat,1):end) = 1 %con size evaluo el numero de filas para desplazarme de columna en columna
eMat(1,:) = 1
%d
cSub = cMat(2:9,2:9)
%e
lin = 1:20
lin(2:2:end)=lin(2:2:end)*-1
%f
r = rand(1,5)
r(find(r<0.5)) = 0