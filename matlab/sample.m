run('./settings.m');
disp('-- sample --');

t=0:0.01:2*pi;
x1=sin(t);
x2=cos(t);


%%

plot_name = 'test_plot'

figure(1)
hold off
plot(t,x1)
leg(1) = {[ num2str(1.57) '$^\circ$']};
hold on
plot(t,x2)
leg(2) = {[ num2str(3.14) '$^\circ$']};
grid on;
xlabel('Time [s]','Interpreter', 'LaTeX')
ylabel('$\eta$ [ ]','Interpreter', 'LaTeX')
h=legend(leg,'Location','SE');
set(h,'Interpreter','LaTeX')
text(pi ,   0.1113, 'Re$_{0.7} \approx$ 0','Interpreter', 'LaTeX')

set(gcf, 'PaperUnits', 'centimeters', 'PaperPosition', [0 0  myset.norm.w myset.norm.h], 'PaperSize', [ myset.norm.w myset.norm.h] );
print(gcf,[ myset.path plot_name '.' myset.ext], myset.format);
set(gcf, 'PaperUnits', 'centimeters', 'PaperPosition', [0 0  jfrset.norm.w jfrset.norm.h3pp], 'PaperSize', [ jfrset.norm.w jfrset.norm.h] );
print(gcf,[ jfrset.path plot_name '.' jfrset.ext], jfrset.format);

