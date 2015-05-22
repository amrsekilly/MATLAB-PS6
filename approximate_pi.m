% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 6

% inputs: delta: scalar, smallest diffrence between (apval - pi)
% output: two outputs, 
% apval: approximated value of pi
% k: from the approximation equation
% apval = sqrt(12) * ({segma k=0 : Inf} ((-3).^(-k)) / (2*k + 1))
function [apval, k] = approximate_pi (delta)
    d = 10;
    k = -1;
    apval = 0;
    while (d >= delta)
        k = k + 1;
        apval = apval + sqrt(12) * ((-3).^(-k)) / (2*k + 1);
        d = abs(apval - pi);
    end
end



