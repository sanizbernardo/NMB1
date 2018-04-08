function F = fMatrix(f, u, N)
h = 1/(N+1);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

F = f(X.*h,Y.*h)*h^2;
for i = 1:N
    F(i,1) = F(i,1) - u(i*h, 0);
    F(i,N) = F(i,N) - u(i*h, 1);
    F(1,i) = F(1,i) - u(0, i*h);
    F(N,i) = F(N,i) - u(1, i*h);
end
end