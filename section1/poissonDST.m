% POISSONDST calculates the solution to the differential equation
% d^2/dx^2 u(x,y) + d^2/dx^2 u(x,y) = f(x,y)
% in a 1x1 grid for a given function f and boundary conditions u. The
% variable N represents how fine the grid is.
function U = poissonDST(f, u, N)
F = fMatrix(f, u, N);

Fs = sineTransform(F);

Us = calcU(Fs);

Ut = invTransform(Us);

U = complete(Ut, u);
end