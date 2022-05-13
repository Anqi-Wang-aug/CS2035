pi = mypie(10)
pi = mypie(100000)
function pi = mypie(N)
    circle = 0;
    square = 0;
    x = rand(1,N);
    y = rand(1,N);
    for i=1:1:N
        d = x(i)*x(i)+y(i)*y(i);
        if(d<=1)
            circle = circle+1;
        end
        square = square+1;
    end
    pi = 4*(circle/square);
end