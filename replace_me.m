
% v is a vector, while a, b, and c are all scalars. 
% The function replaces every element of v that is equal to a with b and c. 
% x = replace_me([1 2 3],2,4,5);
% makes x equal to [1 4 5 3]
% c is omitted, it replaces occurrences of a with two copies of b.
% b is also omitted, it replaces each a with two zeros.

% replace_me([-5 -3 -3 -5 -1 -5 -5 -4 -1 -1 -3 -2 -1 -1 -2 -1 -1 -3 -4 -2 -2 -4 -3 -3], -2)

function w = replace_me(v,a,b,c)
    r = [];
    if ((nargin < 3) & logical(v(v == a(1))))
        % b is omitted
    %    while(w(v == a(1)))
            eqInd = find(v == a(1));
            w = v;
            for i = eqInd
                % w = [v(1 : i-1), 0, 0, v(i+1 : end)];
                w = [w(1: i -1), 0, 0, w(i+1 : end)];              
            end
      %  end
    elseif ((nargin < 4) & logical(v(v == a(1))))
        % c is omitted
        % replace occurances of a with 2 copies of b
        %while (w(v == a(1)))
            eqInd = find(v == a(1));
            for i = eqInd
                w = [v(1 : i-1), b, b, v(i+1 : end)];
            end
        %end
    elseif (find(v == a(1)))
        %fprintf('equal');
        % Code here
        % find equal elements
        %while (w(v == a(1)))
            eqInd = find(v == a(1));
            for i = eqInd
                w = [v(1 : i-1), b, c, v(i+1 : end)];
            end
            fprintf('there is a val');
        %end
    else
        fprintf('No val');
        w = v;
    end
end
%}

