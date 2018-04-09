function Z = complete(M, u, N)
h = 1/(N+1);

Z = zeros(N+2,N+2);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

U = u(X*h, Y*h);

Z(1,1) = U(1,1);
Z(1,N+2) = U(1,N);
Z(N+2,1) = U(N,1);
Z(N+2,N+2) = U(N,N);

Z(1,2:N+1) = U(1,:);
Z(2:N+1,1) = U(:,1);
Z(N+2,2:N+1) = U(N,:);
Z(2:N+1,N+2) = U(:,N);


for i = 1:N+2
    for j = 1:N+2
        if ~(i == 1 || i == N+2 || j == 1 || j == N+2)
            Z(i,j) = M(i-1,j-1);
        end
    end
end
end