function F = fMatrix(f, u, N)
h = 1/(N+1);

% Maakt element-wise berekeningen eenvoudig
x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

% F_ij = f_ij * h^2
F = f(X*h,Y*h)*h^2;

% Berekent u_n, u_z, u_w, u_o
x2 = 0:N+1;
y2 = 0:N+1;
[X2, Y2] = meshgrid(x2,y2);

U = u(X2*h, Y2*h);

for i = 1:N
    % u_z
    F(i,1) = F(i,1) - U(i+1, 1);
    
    % u_n
    F(i,N) = F(i,N) - U(i+1, N+2);
    
    % u_o
    F(1,i) = F(1,i) - U(1, i+1);
    
    % u_w
    F(N,i) = F(N,i) - U(N+2, i+1);
end
end