%{
Opgave 1
%}
%{
P1 = poissonDST(@f1, @u1, 50);

P2 = poissonDST(@f1_2, @u1_2, 50);

P3 = poissonDST(@f1_2, @u1_2, 50);
%}

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

error = zeros(1026, 1026);
for i = 0:1025
    for j = 0:1025
        error(i+1, j+1) = F(i+1, j+1) - u2(h*i, h*j);
    end
end

imagesc(error);
colormap(winter);

disp('finished');