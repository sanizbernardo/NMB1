n = 2;
x = linspace(0,3);
y = zeros(length(x),1);
t = [0 0 0 1 2 3 3 3];
for i = 1:length(x)
    z = bspline_vector(t ,x(i) ,n);
    y(i) = z(1);
end
plot(x,y)