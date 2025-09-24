function EULER1(N,gtype)
m=1:N;
a = (1+1/m).^m;
switch gtype
    case 1 %SIMPLE
        semilogx(m,a,'k.')
        grid on
        axis([1,N,1.8,2.8])
        xlabel('\itm','FontName','Times')
        ylabel('\ita_m','FontName','Times')
    case 2
        plot(log(m), log(exp(1)-a),'k.')
        axis equal tight
        grid on
        xlabel('\ln{\itm}','FontName','Times')
        xlabel('\ln|e-{\ita_m}','FontName','Times')
end