% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 4

% input: X: 1xn vector or mxn matrix
% output: ind: nx2 matrix [rows indexes, cols indexes]
% large_elements function: 
% returns the indexes of any element that's,
% it's value is > the sum of it's indexes
% test cases:
% indexes = large_elements([1 4; 5 2; 6 0])
% [1 2; 2 1; 3 1]
function ind = large_elements (X) 
ind = [];
    for i = 1 : size(X, 1) % rows loop
        for j = 1 : size(X, 2) % cols loop
            insum = i + j;
            if (X(i,j) > insum)
                ind = [ind; i, j];
            end
        end
    end
end