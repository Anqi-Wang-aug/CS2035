%% 1a: plot *tr and *te on two graphs
load('A2')

subplot(1,2,1)
plot(xtr, ytr, '.')
hold on
subplot(1,2,2)
plot(xte,yte,'.')
hold on

%% 1b: polyfit
range = [0,3];
[p,S]= polyfit(xtr, ytr, 1);
p
sym t;
f1 = @(t) p(1)*t+p(2);
subplot(1,2,1)
fplot(f1, range);
hold on

m = numel(xtr);
me = numel(xte);
n = numel(p);
trerr = [];
teerr = [];
err = 0;
for i = 1:1:m
    err = err+(f1(xtr(i))-ytr(i))^2;
end
err = err/m
trerr = [trerr; err];

%% 1c: plot with xtr and ytr
subplot(1,2,2)
fplot(f1, range);
err = 0;
for i = 1:1:me
    err = err+(f1(xte(i))-yte(i))^2;
end
err = err/me
teerr = [teerr; err];
hold on

%% 1d: add a column vector and use linear regression formula
one = ones(size(xtr));
X = [xtr one];
reg = inv(mtimes(X', X))*X'*ytr;
% yes, reg is the same as p

%% 1e third order polynomial regression
[p, S] = polyfit(xtr, ytr, 3);
p
sym t;
f2 = @(t) p(1)*t^3+p(2)*t^2+p(3)*t+p(4);
subplot(1, 2, 1)
fplot(f2, range);
hold on
err = 0;
for i=1:1:m
    err = err+(f2(xtr(i))-ytr(i))^2;
end
err = err/m
trerr = [trerr; err];

subplot(1,2,2)
fplot(f2, range)
err = 0;
for i=1:1:me
    err = err+(f2(xte(i))-yte(i))^2;
end
err = err/me
teerr = [teerr; err];
hold on
% yes the error is smaller and it is a better fit

%% 1f 10th order regression
[p, S] = polyfit(xtr, ytr, 10);
p
sym t;
f3 = @(t) p(1)*t^10+p(2)*t^9+p(3)*t^8+p(4)*t^7+p(5)*t^6+p(6)*t^5+p(7)*t^4+p(8)*t^3+p(9)*t^2+p(10)*t+p(11);
subplot(1, 2, 1)
fplot(f3, range);
hold on
err = 0;
for i = 1:1:m
    err = err+(f3(xtr(i))-ytr(i))^2;
end
err = err/m
trerr = [trerr; err];

subplot(1,2,2)
fplot(f3, range)
err = 0;
for i = 1:1:me
    err = err+(f3(xte(i))-yte(i))^2;
end
err = err/me
teerr = [teerr; err];
% No it is not a better fit comparing to third order regression.

%% error comparison
% This is just a table for me to examine the difference among errors more
% easily
errors = table(trerr, teerr)
