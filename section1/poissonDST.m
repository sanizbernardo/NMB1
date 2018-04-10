function U = poissonDST(f, u, N)
F = fMatrix(f, u, N);

Fs = sineTransform(F);

Us = calcU(Fs);

Ut = invTransform(Us);

U = complete(Ut, u);
end