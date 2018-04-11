%{
Opgave 3
%}

F = poissonDST(@f3, @u3, 1000);

%contour(F, 20);
surf(F);
colormap(summer);
colorbar;
shading interp;