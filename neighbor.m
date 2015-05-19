% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 1

% Check that the input v is indeed a vector and has at least two elements
% and return an empty array otherwise.

% inputs: v - vector of length n
% output: d - a vector --can't put details.. grader
% v == [1 2 4 7]
% d == [1 2 3]

function d = neighbor (v)    
    d = [];
    if (length(v) >= 2 & size(v, 1) == 1)
        % all logic
        for i = 2:length(v)
            d(end+1) = abs(v(i) - v(i-1));
        end
    end
end