syms x y
f = (sin(x.*y)+cos(x.*y))./(x.^2+y.^2+1);
%% a integration
int(f,x,0,5)
int(f,y,0,5)
int(int(f,x,0,5),y,0,5)

%% b eval
eval(int(f,x,0,5))
eval(int(f,y,0,5))
eval(int(int(f,x,0,5),y,0,5))
% This function is not integrable. The eval returns the input

%% c integral2
f = @(x,y) sin(x.*y)+cos(x.*y)./x.^2+y.^2+1;
integral2(f,0,5,0,5)