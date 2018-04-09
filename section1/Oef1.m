%{
Opgave 1
%}

P1 = poissonDST(@f1, @u1, 50);

P2 = poissonDST(@f1_2, @u1_2, 50);

P3 = poissonDST(@f1_2, @u1_2, 50);

%{
Opgave 2
%}

for i = 3:10
    poissonDST(@f2, @u2, 2^i);
end

tic
F = poissonDST(@f2, @u2, 1024);
toc

h = 1/1025;

x = 1:1024;
y = 1:1024;
[X, Y] = meshgrid(x,y);
U = u2(X*h, Y*h);

error = zeros(1026, 1026);
for i = 2:1023
    for j = 2:1023
        error(i, j) = F(i, j) - U(i+1, j+1);
    end
end
error = abs(error);

%surf(error);
contour(error, 20);
colorbar;
colormap(winter);
%shading interp;

disp('finished');