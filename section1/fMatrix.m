function F = fMatrix(f, u, N)
h = 1/(N+1);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

F = f(X.*h,Y.*h)*h^2;
U = u(X*h, Y*h);
for i = 1:N
    F(i,1) = F(i,1) - U(i, 1);
    F(i,N) = F(i,N) - U(i, N);
    F(1,i) = F(1,i) - U(1, i);
    F(N,i) = F(N,i) - U(N, i);
end
end