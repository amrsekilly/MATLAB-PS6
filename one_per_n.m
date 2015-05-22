% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 5

% input: x: scalar
% output: n: smallest positive integer, for
% 1 + 1/2 + 1/3 + ... + 1/n > x
% max n = 10000
% if exceeded return -1
function n = one_per_n (x)
i = 0;
sum = 0;
n = 0;
    while (sum < x & n <= 10000) 
        n = n + 1;
        sum = sum + 1/n;
    end
    
    if (n == 10000+1)
        n = -1;       
    end
end