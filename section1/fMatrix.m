function F = fMatrix(f, u, N)
h = 1/(N+1);

F = zeros(N,N);
for i = 1:N
    for j = 1:N
        F(i,j) = f(i*h,j*h)*h^2;
    end
    F(i,1) = F(i,1) - u(i*h, 0);
    F(i,N) = F(i,N) - u(i*h, 1);
end
for i = 1:N
    F(1,i) = F(1,i) - u(0, i*h);
    F(N,i) = F(N,i) - u(1, i*h);
end
end