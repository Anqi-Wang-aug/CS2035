function Z= repace_even(M)
[u v]=size(M);
    for i=1:u
        for j=1:v
            if rem(M(i,j),2)==0
                M(i,j) = 0;
            end
        end
    end
Z=M;
end