function NUM_OF_PRIMES(N)
n=1:N;
q = isprime(n);
pin=cumsum(q);
ratio = pin .* log(n)./n;
plot(log10(n), ratio, 'k.')
grid on
axis square tight
xlabel('log_{10}{\itn}', 'FontName','Times')
ylabel('result', 'FontName','Times')