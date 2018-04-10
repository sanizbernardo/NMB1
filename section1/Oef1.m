%{
Opgave 1
%}

P1 = poissonDST(@f1, @u1, 50);

P2 = poissonDST(@f1_2, @u1_2, 50);

P3 = poissonDST(@f1_2, @u1_2, 50);

%{
Opgave 2
%}

results = zeros(8,2);
for i = 3:10
    F = poissonDST(@f2, @u2, 2^i);
    
    x = 0:2^i + 1;
    y = 0:2^i + 1;
    [X, Y] = meshgrid(x,y);
    U = u2(X*h, Y*h);

    error = F-U;
    error = abs(error);
    results(i-2,1) = 2^i;
    results(i-2,2) = max(error(:));
end
disp(results);
T = array2table(results,'VariableNames',{'N','error'});
disp(T);


N = 512;
tic
F = poissonDST(@f2, @u2, N);
toc

h = 1/(N+1);

x = 0:N+1;
y = 0:N+1;
[X, Y] = meshgrid(x,y);
U = u2(X*h, Y*h);

error = F-U;
error = abs(error);

%surf(error);
contour(error, 20);
colorbar;
colormap(winter);
%shading interp;

disp('finished');