function Us = calcU(Fs)
N = size(Fs, 1);
h = 1/(N+1);
Us = zeros(N, N);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

S = 4*(sin(X*0.5*pi*h).^2 + sin(Y*0.5*pi*h).^2);
for i = 1:N
   for j = 1:N
       Us(i,j) = -Fs(i,j)/S(i,j);
   end
end
end