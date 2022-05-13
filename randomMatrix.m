function A=randomMatrix(n)
    V=zeros(n,n);
    for i=1:n
        for j=1:n
            a=randi(n^2,1);
            if ismember(a,V)
                while ismember(a,V)
                    a=randi(n^2,1);
                end
            end
            V(i,j) = a;
        end
    end
    A=V;
end
