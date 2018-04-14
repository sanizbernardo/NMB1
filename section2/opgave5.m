%Quadratic spline basis
k = 2;
x = linspace(0,1);
t = [-.2 -.1 0 .1 .3 .5 .8 1 1.1 1.2];
n = length(t) - 2*k - 1;
y1 = zeros(k+n, length(x));
for i = 1:k+n
    c = zeros(k+n,1);
    c(i) = 1;
    y1(i,1:length(x)) = deboor(t,x,c,k);
end
%Cubic spline basis
k = 3;
t = [-.3 -.2 -.1 0 .1 .3 .5 .8 1 1.1 1.2 1.3];
n = length(t) - 2*k - 1;
y2 = zeros(k+n, length(x));
for i = 1:k+n
    c = zeros(k+n,1);
    c(i) = 1;
    y2(i,1:length(x)) = deboor(t,x,c,k);
end
%plot beide
ha = tight_subplot(1,2,.02,.05,[.05 .01]);
axes(ha(1));
plot(x,y1);
title('Kwadratisch');
axes(ha(2))
plot(x,y2);
set(gca,'YTickLabelMode','manual','YTickLabels',[]);
box on
title('Kubisch');