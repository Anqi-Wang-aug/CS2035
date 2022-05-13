x1 = [3 5 -2 3 8];
x2 = [3 4 1 -9 10];
x = [1 -1 2.3 4 -3 6.5];
A = magic(6);

[ind, gm] = myGeomean(x1)
[ind, gm] = myGeomean(x2)
%[ind, hm] = myHarmmean(x1)
%[ind, hm] = myHarmmean(x2)
[ind, hm] = myHarmmean(x)
mm = myMean(x1, 1)
mm = myMean(x1, 2)
mm = myMean(x1, 3)
gm = myGeomean2(A, 1)
gm = myGeomean2(A, 2)

function [ind, gm] = myGeomean(x)
    n = length(x);
    ind = find(x<=0);
    gm = nthroot(n, prod(x));
end

function [ind, hm] = myHarmmean(x)
    n = length(x);
    ind = find(x<=0);
    sum = 0;
    for i=1:1:n
        sum = sum+1/x(i);
    end
    hm = n/sum;
end

function mm = myMean(x,id)
    n = length(x);
    indx = find(x>0);
    m = [];
    for i=1:1:length(indx)
        m = [m x(indx(i))];
    end
    if(id==1)
        [ind, gm] = myGeomean(m);
        mm = gm;
    elseif (id==2)
        [ind, gm] = myHarmmean(m);
        mm = gm;
    else
        mm = -1;
    end
end

function gm = myGeomean2(X,id)
    indX = find(X<=0);
    [m n] = size(X);

    if (length(indX) ~= 0)
        gm = -1;
    elseif (id == 1)
        gm = [];
        for i=1:1:n
            [ind, gmx] = myGeomean(X(:,i));
            gm = [gm gmx];
        end
    elseif (id == 2)
        gm = [];
        for i=1:1:m
            [ind, gmx] = myGeomean(X(i, :));
            gm = [gm gmx];
        end
    end
end

