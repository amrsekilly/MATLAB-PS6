% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 9

% each of 1001 values of t 
% uniformly spaced from 0 to 4? inclusive.
% t = [0:4*pi/1001:4*pi];

% input argument is a positive scalar integer n
% output argument is a row vector of 1001 such sums
% one sum for each value of t

function sw = square_wave (n)
t = [0:((4*pi)/1000):(4*pi)];
sw = 0;
    for k = 1:n
        m = (2 * k - 1);
        sw = sw + (sin(m.*t)) ./ (m);
    end
end