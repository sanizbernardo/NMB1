k = 2;
x = linspace(0,2*pi);
t = [-pi -pi/2 0 pi/2 pi 3*pi/2 2*pi 5*pi/2 3*pi];
f = sin(x).';
y = kkb_spline(t,x,f,x,k);
plot(x,y);
hold on
plot(x,f);