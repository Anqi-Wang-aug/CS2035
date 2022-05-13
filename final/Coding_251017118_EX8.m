x = myrand(10000);
figure
histogram(x,8);
function x = myrand(N)
    x1 = []
    min = 1
    max = 3
    for i=1:1:N
        n = rand();
        n = (max-min)*n+min;
        if n >=1 && n<=5/4
            t = (3-1.5)*rand()+1.5;
            x1 = [x1 t];
        elseif n>5/4 && n<=3/2
            x1 = [x1 n];
        elseif n<3/2 && n<=3
            t = (1.5-1.25)*rand()+1.25;
            x1 = [x1 t];
        end
    end
    x = x1;
       
end