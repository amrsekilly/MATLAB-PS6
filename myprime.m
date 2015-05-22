% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 10

% input: n: positive integer
% returns: true if n is prime or false otherwise

function ip = myprime (n)
   i = 2;
   if (n == 2)
       ip = 1;
       return;
   elseif (n == 4)
       ip = 0;
       return;
   end
   while (i <= sqrt(n))
       if (rem(n, i) == 0)
           ip = 0;
           return;
       end
       i = i + 1;
   end
   ip = 1;
   return;
end

