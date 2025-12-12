u = linspace(-pi/2, pi/2, 200);
v = linspace(-pi, pi, 200);
[U, V] = meshgrid(u, v);

e = 1.6;

X = sign(cos(U)).*abs(cos(U)).^e .* sign(cos(V)).*abs(cos(V)).^e;
Y = sign(cos(U)).*abs(cos(U)).^e .* sign(sin(V)).*abs(sin(V)).^e;
Z = sign(sin(U)).*abs(sin(U)).^e;

surf(X,Y,Z)
shading interp
axis equal
