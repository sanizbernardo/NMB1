%{
Opgave 3
%}

F = poissonDST(@f1_3, @u1_3, 12);

disp(F);

contour(F, 30);
%surf(F);
colormap(winter);
colorbar;
shading interp;