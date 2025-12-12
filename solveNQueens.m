function [solutions] = solveNQueens(N)
% SOLVENQUEENS Řeší Problém N dam pomocí backtrackingového algoritmu.
%   N: Rozměr šachovnice (N x N)
%   solutions: Buňkové pole obsahující validní rozložení dam (vektory).

    % Inicializace prázdného pole pro řešení
    solutions = {}; 
    board = zeros(1, N); 
    
    % Spuštění rekurzivního backtrackingu
    [solutions] = backtrack(N, board, 1, solutions);
    
    % --- Zobrazení požadovaného výstupu ---
    
    % 1. Původní informativní hlášení
    if ~isempty(solutions)
        fprintf('Nalezeno %d řešení pro N = %d.\n', length(solutions), N);
    else
        fprintf('Pro N = %d neexistuje žádné řešení.\n', N);
    end
    
    % 2. Formátovaný výstup podle požadavku (Input/Output)
    
    output_str = '[';
    if ~isempty(solutions)
        for i = 1:length(solutions)
            % Použijeme num2str pro převod vektoru na řetězec,
            % kde mezery oddělují čísla (standardní formát MATLABu).
            solution_vec_str = ['[', num2str(solutions{i}), ']'];
            
            output_str = [output_str, solution_vec_str];
            
            if i < length(solutions)
                output_str = [output_str, ', '];
            end
        end
    end
    output_str = [output_str, ']'];
    fprintf('Output: %s\n', output_str);

% -------------------------------------------------------------------------
% LOKÁLNÍ FUNKCE 1: Rekurzivní Backtracking
% -------------------------------------------------------------------------

    function [solutions] = backtrack(N, board, row, solutions)
        if row > N
            solutions{end+1} = board;
            return;
        end
        
        for col = 1:N
            board(row) = col;
            if isSafe(board, row)
                solutions = backtrack(N, board, row + 1, solutions);
            end
        end
    end 

% -------------------------------------------------------------------------
% LOKÁLNÍ FUNKCE 2: Ověření bezpečnosti umístění
% -------------------------------------------------------------------------

    function [safe] = isSafe(board, current_row)
        safe = true;
        for prev_row = 1:current_row - 1
            % Konflikt ve sloupci nebo na diagonále
            if board(prev_row) == board(current_row) || ...
               (current_row - prev_row) == abs(board(current_row) - board(prev_row))
                safe = false;
                return;
            end
        end
    end 

end % Konec hlavní funkce solveNQueens