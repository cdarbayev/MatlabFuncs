u = linspace(0, 2*pi, 200);
v = linspace(-2, 2, 200);
[U,V] = meshgrid(u, v);

c = 1;

X = c*cosh(V/c).*cos(U);
Y = c*cosh(V/c).*sin(U);
Z = V;

surf(X,Y,Z)
shading interp
axis equal

