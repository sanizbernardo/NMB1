function Z = complete(M, u)
N = size(M,1);
h = 1/(N+1);

x = 0:N+1;
y = 0:N+1;
[X, Y] = meshgrid(x,y);

Z = u(X*h, Y*h);

for i = 1:N+2
    for j = 1:N+2
        if ~(i == 1 || i == N+2 || j == 1 || j == N+2)
            Z(i,j) = M(i-1,j-1);
        end
    end
end
end