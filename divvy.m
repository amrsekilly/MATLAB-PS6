% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 8

% inputs:
% A: positive integers matrix
% k: a positive scalar
% output:
% B: a matrix of size = size(A),
% all it's elemts are div/k or equal A(non-div) * k
% test cases:
% X = divvy([1 2 ; 3 4], 2)
% X equal to [2 2 ; 6 4]

function B = divvy (A, k)
    B = zeros(size(A));
    B = B + A((A/k) == round(A/k)) + ~A((A/k) == round(A/k)) ;
end