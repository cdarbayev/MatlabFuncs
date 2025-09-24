function ist = IS_TRIANGLE(a,b,c)
x = [a b, c];
x = sort(x);
ist = x(1)>0 & x(1)+x(2)>x(3);