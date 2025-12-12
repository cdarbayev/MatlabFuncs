u = linspace(-2, 2, 200);
v = linspace(0, 4*pi, 200);
[U,V] = meshgrid(u, v);

c = 0.3;

X = U .* cos(V);
Y = U .* sin(V);
Z = c * V;

surf(X,Y,Z)
shading interp
axis equal

