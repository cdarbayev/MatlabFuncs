function NTH_PRIME(N)
n=1:N;
q = isprime(n);
p= n(q);
numprime=length(p);
n = 1:numprime;
ratio = p./n./log(n)
