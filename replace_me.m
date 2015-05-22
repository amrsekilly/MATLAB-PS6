% Introduction to Programming with MATLAB - MOOC
% Homework 6 - Problem 2

% inputs: 
% v: row vector on length n
% a: a scalar to find and replace in the new vector
% b: 1st new value "scalar"
% c: 2nd new value "scalar"

%% replace_me function
% It takes v and search through it for 'a' scalar, 
% when a is found, it replaces it with two values b&c.
% c is omitted: c = b
% b and c are omitted: b = 0; c = 0
function w = replace_me(v,a,b,c)
    if (nargin == 0 | nargin < 2)
        error('Invalid Input, you have to enter a (vector, scalar, scalar, scalar) as arguments');
    elseif (nargin < 3)
        % b & c are omitted
        b = 0;
        c = 0;
    elseif (nargin < 4)
        c = b;
    end
    
    
    
    index = get_index (v, a); % get indexes
    % replace each occurance with b c 
    % if count = 1 occurance -> index++
    tmpv = [];
    if (length(index) > 1)
        % if there is at least one occurance of a in v
        for i = 1 : length(index)
            % loop over all the occuramces "indexes"
            if (i < length(index))
                % if this is not the last occurance
                if (length(tmpv) < 1)
                    % 1st replacement "nothing in buffer yet"
                    tmpv = [v(1 : index-1), b, c, v(index + 1 : index(i+1)-2)];
                else
                    tmpv = [tmpv, b, c, v(index + length(tmpv)+4 : index(i+1))];
                end
            else
                if (v(index(end)) == v(end)) % last found is last in v
                    tmpv = [tmpv, b, c];
                else % last found is in the middle
                    tmpv = [tmpv, b, c, v(index+3 : end)];
                end
                index(1) = [];
            end
        end
    elseif (length(index) == 1)
        for i = 1 : length(index)
            tmpv = [v(1 : index-1), b, c, v(index+1 : end)];
        end  
    else 
        tmpv = v;
    end
    w = tmpv;
end

%% Get index function 
function index = get_index (v, a)
   % get indeces of each found val
    index = [];
    for i = 1 : length(v)
        if (v(i) == a)
            index(end+1) = i;
        end
    end
end



