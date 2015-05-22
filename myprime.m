% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 9

% input: n: positive integer
% returns: true if n is prime or false otherwise

function ip = myprime (n)
  if (n <= 1)
      ip = false;
  elseif (n <= 3)
      ip = true;
  elseif (mod(n, 2) == 0 | mod(n, 3) == 0)
      ip = false;
  else
      ip = true;
end