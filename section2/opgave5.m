%Quadratic spline basis
k = 2;
n = 5;
x = linspace(0,1);
t = [-.2 -.1 0 .1 .3 .5 .8 1 1.1 1.2];
y = zeros(k+n, length(x));
for i = 1:k+n
    c = zeros(k+n,1);
    c(i) = 1;
    y(i,1:length(x)) = deboor(t,x,c,k);
end
plot(x,y);
print('quadratic','-depsc','-tiff');
%Cubic spline basis
k = 3;
t = [-.3 -.2 -.1 0 .1 .3 .5 .8 1 1.1 1.2 1.3];
y = zeros(k+n, length(x));
for i = 1:k+n
    c = zeros(k+n,1);
    c(i) = 1;
    y(i,1:length(x)) = deboor(t,x,c,k);
end
plot(x,y);
print('cubic','-depsc','-tiff');