%% FUN1: SYMBOLIC MATRICES
syms a1 b1 c1 d1 a2 b2 c2 d2 e

fprintf('symcbolic matrix A: \n');
A = [a1 b1; c1 d1]
fprintf('symbolic matrix B: \n');
B = [a2 b2; c2 d2]*e

fprintf('A+B: \n');
C = A+B

fprintf('A*B: \n');
D = A*B

a1 = 2;
b1 = 1;
c1 = a1+b1;
d1 = a1^(1/a1);
a2 = 5;
b2 = 3;
c2 = a2*b2;
d2 = a2^(1/b2);
e = a1*b1*c1*d1*a2*b2*c2*d2;

fprintf("a1 = %f, b1 = %f, c1 = %f, d1 = %f;\n", a1, b1, c1, d1);
fprintf("a2 = %f, b2 = %f, c2 = %f, d2 = %f;\n", a2, b2, c2, d2);
fprintf('e = %f\n', e);

fprintf('And\n');
fprintf('A = ');
eval(A)
fprintf('B = ');
eval(B)
fprintf('C = ');
eval(C)
fprintf('D = ');
eval(D)

fprintf('inverse of B: \n');
B =  inv(B)
fprintf('Value of B = \n')
eval(B)

%% FUN2: SOLVING SYSTEMS OF EQUATIONS
syms x1 x2 q1 q2
x = [x1; x2];
q = [q1; q2];
P = [1 1; 1 -1];
q1 = 1;
q2 = -5;
q = eval(q);
fprintf('solutions of x: ')
x = P\q
fprintf('test if x=inv(P)*q: ')
x==inv(P)*q

%% FUN3: SYMBOLIC COMPUTING OF POLYNOMIAL
X = randn(1,1000000);
hist(X,1000000);
title('a naughty figure');

rng(1)
randn
