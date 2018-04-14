%parameters
k = 3;
n_max = 100;
x = linspace(-1,1,200)';
f = f7(x);
f_ruis = f + 0.04*randn(size(x));
norm_f = zeros(1,n_max);
norm_fruis = zeros(1,n_max);
%bereken voor n=1 tot n_max een benadering voor f_ruis en sla norm op
for n = 1:n_max
    t = [-1.3 -1.2 -1.1 linspace(-1,1,n+1) 1.1 1.2 1.3];
    z = kkb_spline(t,x,f_ruis,x,k);
    norm_f(n) = norm(z-f);
    norm_fruis(n) = norm(z-f_ruis);
end
%zoek de n waarvoor de norm minimaal is
[res_f,n_f] = min(norm_f);
[res_fruis,n_fruis] = min(norm_fruis);
%reconstrueer t
t_f = [-1.3 -1.2 -1.1 linspace(-1,1,n_f+1) 1.1 1.2 1.3];
t_fruis = [-1.3 -1.2 -1.1 linspace(-1,1,n_fruis+1) 1.1 1.2 1.3];
%herbereken benaderingen
z_f = kkb_spline(t_f,x,f_ruis,x,k);
z_fruis = kkb_spline(t_fruis,x,f_ruis,x,k);
%construeer subplots
ha = tight_subplot(1,2,.05,[.1 .01],[.05 .02]);
set(ha,'XTickLabelMode','auto');
set(ha,'YTickLabelMode','auto');
%plot normen
axes(ha(1));
box on
hold on
plot(1:n_max,[norm_f.',norm_fruis.']);
ha(1).ColorOrderIndex = 1;
plot(n_f,res_f,'LineStyle','none','Marker','o');
plot(n_fruis,res_fruis,'LineStyle','none','Marker','o');
xlabel('Aantal knopen n');
ylabel('Norm fout');
legend('Fout tov f', 'Fout tov f_{ruis}','Beste benadering f','Beste benadering f_{ruis}');
%plot benaderingen
axes(ha(2));
box on
hold on
plot(x,f,'k');
plot(x,z_f,'r');
plot(x,z_fruis,'b');
legend('Originele functie','Beste benadering f','Beste benadering f_{ruis}');