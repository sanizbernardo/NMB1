function Us = calcU(Fs, N)
h = 1/(N+1);
Us = zeros(N+1,N+1);

for i = 1:N+1
   for j = 1:N+1
       Us(i,j) = -Fs(i,j)/(4*(sin(0.5*pi*i*h)^2 + sin(0.5*pi*j*h)^2));
   end
end
end