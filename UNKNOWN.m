function UNKNOWN(epsilon, dt)
t = 1:dt:1/epsilon;
x = 1./t;
g = x.^2-x+2+sin(t);
plot(x,g,'g-')
axis([0, 1,0,3])
grid on
xlabel('\it x', 'FontName', 'Times')
ylabel('\it g', 'FontName', 'Times')
axis square