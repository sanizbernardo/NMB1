%knooppunten
t1 = [-1 -1 -1 linspace(-1,1,15) 1 1 1];
t2 = [-1 -1 -1 -1 -.75 linspace(-.5, .5, 11) .75 1 1 1 1];
x = linspace(-1,1);
f = f7(x);
z1 = kkb_spline(t1,x,f,x,3);
z2 = kkb_spline(t2,x,f,x,3);
res1 = f - z1.';
res2 = f - z2.';
%construeer subplots
ha = tight_subplot(2,2,[.08 .05],.05,[.07 .03]);
axes(ha(1));
hold on
box on
plot(x,z1);
plot(x,f);
set(ha, 'XTickLabelMode', 'auto') 
set(ha, 'YTickLabelMode', 'auto')
%plot locaties van de knooppunten
for i = 5:17
    line([t1(i) t1(i)],[-.2 .2],'Color','k','LineStyle',':');
end
legend('Benadering z_{1}','Originele functie','Knooppunten','AutoUpdate','off','Location','northwest');
title('Equidistante knooppunten')
axes(ha(2));
plot(x,[z2,f.']);
for i = 5:17
    line([t2(i) t2(i)],[-.2 .2],'Color','k','LineStyle',':');
end
legend('Benadering z_{2}','Originele functie','Knooppunten','AutoUpdate','off','Location','northwest');
title('Knooppunten geconcentreerd rond 0');
axes(ha(3));
plot(x,res1);
title('Residu z_{1}');
text(-.9,.125,['||f-z_{1}|| = ' num2str(norm(res1))]);
axes(ha(4));
plot(x,res2);
ylim([-.15,.1501])
box on
title('Residu z_{2}')
text(-.9,.125,['||f-z_{2}|| = ' num2str(norm(res2))]);
print('opgave6','-depsc','-tiff');
hold off