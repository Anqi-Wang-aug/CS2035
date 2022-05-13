x = [10 2 -3 2 35 5 -100];
closest = myclosest(x,7)
function y = myclosest(x,t)
    l = length(x);
    dif = [];
    for i=1:1:l
        dif = [dif abs(t-x(i))];
    end
    min_pos = find(dif==min(dif));
    y = x(min_pos);
end