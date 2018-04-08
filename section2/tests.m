k = 2;
n = 5;
x = linspace(0,1,100);
t = [-.2 -.1 0 .1 .3 .5 .8 1 1.1 1.2];
y = bspline_vector(t,x,n,k)