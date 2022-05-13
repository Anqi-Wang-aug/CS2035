%if not magic return 0, otherwise return 1
function output = isMagic(M)
    output=1;
    c=sum(M,1);
    r=sum(M,2);
    t=trace(M);
    
    n=size(c);
    m=size(r);
    for i = 1:n
        if c(i)~=t
            output=0;
            return
        end
    end
    
    for j=1:m
        if r(i)~=t
            output=0;
            return
        end
    end
    u = unique(M);
    if numel(u)~=numel(M)
        output = 0;
    end
end