function A= replace_gt10(M)
    [u v] = size(M);
    for i=1:u
        for j=1:v
            if M(i,j)>10
                M(i,j)=0;
            end
        end
    end
    A=M;
end