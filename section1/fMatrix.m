% FMATRIX creates the matrix that is to be inverted by th 2D discrete sine
% transformation. It receives a function f in two variables, a function u
% desribing boundary conditions, and an integer N representing how fine the
% used grid should be
function F = fMatrix(f, u, N)
h = 1/(N+1);

x = 1:N;
y = 1:N;
[X, Y] = meshgrid(x,y);

% F_ij = f_ij * h^2
F = f(X*h,Y*h)*h^2;

% Calculate u_n, u_z, u_w, and  u_o from boundary function
x2 = 0:N+1;
y2 = 0:N+1;
[X2, Y2] = meshgrid(x2,y2);

U = u(X2*h, Y2*h);

% Subtract boundary conditions
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