k = 3;
x = linspace(0,2*pi);
t = [-pi -2*pi/3 -1*pi/3 0 pi/4 2*pi/4 3*pi/4 pi 5*pi/4 6*pi/4 7*pi/4 2*pi 7*pi/3 8*pi/3 3*pi];
f = sin(x).';
y = kkb_spline(t,x,f,x,k);
plot(x,y,':','LineWidth',4);
xlim([0 2*pi])
ylim([-1 1])
hold on
plot(x,f);
print('sine_cubic','-depsc','-tiff');
hold off