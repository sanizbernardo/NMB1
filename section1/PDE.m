%{
Opgave 3
%}

F = poissonDST(@f3, @u3, 1024);

figure;
contour(F, 20);
colormap(winter);
colorbar;

figure;
surf(F);
colormap(winter);
colorbar;
shading interp;