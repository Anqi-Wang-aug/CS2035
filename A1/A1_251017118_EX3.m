% define the function
syms x
f = @(x) 2*x.^3-5*x.^2+5*exp(x/2)+2*cos(4*x);

result = [];

for i = 0:0.01:3
    result = [result f(i)];
end

min_y = min(result)
[r,c] = find(result==min_y);
min_x = (c-1)/100

max_y = max(result)
[r,c] = find(result==max_y);
max_x = (c-1)/100


