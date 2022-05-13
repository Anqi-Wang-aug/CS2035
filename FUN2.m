rng(1)
x = [];
for i=1:1:1000000
    x = [x randn];
end
x;
hist(x)