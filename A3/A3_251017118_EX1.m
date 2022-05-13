[p0 o0] = find_pos_occ("The due date of assignment 3 is March 25.", "a")
[p1 o1] = find_pos_occ("The due date of assignment 3 is March 25.", "w")
function [pos occ] = find_pos_occ(x,c)
    pos = strfind(x,c);
    occ = numel(pos);
end