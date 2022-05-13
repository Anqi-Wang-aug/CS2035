%% test isMagic()
A = magic(10)
if(isMagic(A)==1)
    fprintf('it is a magic matrix')
else
    fprintf('it is not a magic matrix')
end

%% test randomMatrix()
B = randomMatrix(4)
if(isMagic(B)==1)
     fprintf('it is a magic matrix')
else
    fprintf('it is not a magic matrix')
end
