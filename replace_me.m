
% v is a vector, while a, b, and c are all scalars. 
% The function replaces every element of v that is equal to a with b and c. 
% x = replace_me([1 2 3],2,4,5);
% makes x equal to [1 4 5 3]
% c is omitted, it replaces occurrences of a with two copies of b.
% b is also omitted, it replaces each a with two zeros.

function w = replace_me(v,a,b,c)
    if (nargin < 3)
        % b is omitted
        a = zeros(1,2);
        c = 0;
    
    elseif (nargin < 4)
        % c is omitted
        % replace occurances of a with 2 clones of b
        a = [b , b];
        c = b;
    end
  
    if (v(v == a(1)))
        fprintf('equal');
        % Code here
        % find equal elements
        eqInd = find(v == a(1))
        w = [v(1 : eqInd-1), b, c, v(eqInd+1 : end)];
    else
        w = v;
    end
end