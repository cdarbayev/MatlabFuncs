clear; close all; clc;

gridSize = 200;
steps = 20000;
drawEvery = 1000;

gifFile = 'langton_ant.gif';
gifDelay = 0.02;

grid = zeros(gridSize)
r = round(gridSize/2);
c = round(gridSize/2);

% Směry: 1 = nahoru, 2 = vpravo, 3 = dolů, 4 = vlevo
dir = 1;

figure('Color','white');
h = imagesc(grid);
colormap([1 1 1; 0 0 0]);
axis equal off;
drawnow;

for t = 1:steps
    
    current = grid(r,c);
    
    if current == 0
        dir = dir + 1;
        if dir > 4, dir = 1; end
        grid(r,c) = 1;
    else
        dir = dir - 1;
        if dir < 1, dir = 4; end
        grid(r,c) = 0;
    end
    
    if dir == 1
        r = r - 1;
    elseif dir == 2
        c = c + 1;
    elseif dir == 3
        r = r + 1;
    elseif dir == 4
        c = c - 1;
    end
    
    if r < 1 || r > gridSize || c < 1 || c > gridSize
        disp('Mravenec narazil do okraje');
        break;
    end
    
    if mod(t, drawEvery) == 0
        set(h, 'CData', grid);
        title(sprintf('Krok %d z %d', t, steps));
        drawnow;
        
        frame = getframe(gcf);

        
        [A,map] = rgb2ind(frame2im(frame), 256);
            if t == drawEvery
                imwrite(A, map, gifFile, 'gif', 'LoopCount', inf, 'DelayTime', gifDelay);
            else
                imwrite(A, map, gifFile, 'gif', 'WriteMode', 'append', 'DelayTime', gifDelay);
            end
    end
end

