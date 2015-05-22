% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 7

% input: A: matrix of positive integers
% output: two row vectors,
% evel = all the even elements of A
% odel = all the odd elements of A
% both arranged according to column-major order of A.
function [evel, odel] = separate_by_two (A)
    evel = A ((A/2) == round (A/2))';
    odel = A ((A/2) ~= round (A/2))';
end