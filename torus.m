u = linspace(0, 2*pi, 150);
v = linspace(0, 2*pi, 150);
[U, V] = meshgrid(u, v);

R = 2;
r = 0.7;

X = (R + r.*cos(V)) .* cos(U);
Y = (R + r.*cos(V)) .* sin(U);
Z = r .* sin(V);

surf(X, Y, Z)
shading interp
axis equal
