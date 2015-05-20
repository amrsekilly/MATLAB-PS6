% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 3

% input: at most two-dimensional matrix A 
% output: dsum - diagonal sum of A
% test case: [1 2 3; 4 5 6; 7 8 9], 
% then the function would return 26

function dsum = halfsum (A)
dsum = 0;
    for i = 1:size(A,1)
        for j = 1:size(A,2)          
            if (i == j)
                dsum = dsum + A(i,j);
            end
        end
    end
end