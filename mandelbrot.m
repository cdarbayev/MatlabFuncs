function mandelbrot(N, maxIter)
    x = linspace(-2, 1, N);
    y = linspace(-1.5, 1.5, N);

    Z = zeros(N);

    for i = 1:N
        for j = 1:N
            c = x(j) + 1i*y(i);
            z = 0;
            k = 0;
            while abs(z) < 2 && k < maxIter
                z = z^2 + c;
                k = k + 1;
            end
            Z(i,j) = k;
        end
    end

    imagesc(Z)
    colormap(jet)
    axis equal tight
    title('Mandelbrot set')
end
