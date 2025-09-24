function LOG_SPIRAL(lambda, A, phimin, phimax,dphi)
phi = phimin:dphi:phimax;
r = A*exp(lambda*phi);
x = r.*cos(phi);
y = r.*sin(phi);
plot(x,y,'r-', 'LineWidth', 5)
axis equal off
LOG_SPIRAL(0.1,1,-10*pi, 4*pi, pi/1000)
print LOG_SPIRAL.png -djpeg