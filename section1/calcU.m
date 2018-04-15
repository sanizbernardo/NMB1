% CALCU calculates the matrix that is t be transformed by the inverse 2D
% discrete sine transform. 
function Us = calcU(Fs)
N = size(Fs, 1);
h = 1/(N+1);
Us = zeros(N, N);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

% Calculate S so that Us_ij = -Fs_ij / 4*S_ij
S = sin(X*0.5*pi*h).^2 + sin(Y*0.5*pi*h).^2;

for i = 1:N
   for j = 1:N
       Us(i,j) = -0.25*Fs(i,j)/S(i,j);
   end
end
end