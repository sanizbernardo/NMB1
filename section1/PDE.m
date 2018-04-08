%{
Opgave 3
%}

F = poissonDST(@f3, @u3, 1024);

%imagesc(F);
%colormap(winter);
surf(F);
colormap(summer);
shading interp;