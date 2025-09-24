function[P, O, alpha, beta, gamma] = TRIANGLE(a,b,c)
switch nargin
    case 1
        b = a;
        c = a;
    case 2
        c = b;
        b = a;
end
if ~IS_TRIANGLE(a,b,c)
    P = NaN;
    O = P;
    alpha = P;
    beta = P;
    gamma = P;
    return
end
O = a+b+c;
t=O/2;
P = sqrt(t*(t-a)*(t-b)*(t-c));
alpha = acos(2*P/b/c);
beta = acos(2*P/(a*c));
gamma = acos(P/(a*b)*2);
disp('Format .aps for DU')