%% e1. differentiation and evaluation
syms x y
f = exp(x.^2+y.^2)
fx = diff(f,x)
fy = diff(f,y)
fxy = diff(fx,y)
fyx = diff(fy,x)

x = 2;
y = 3;
fprintf('when x=2 and y=3\n')
fprintf('The value of eval(fx) is: %f\n', eval(fx));
fprintf('The value of eval(fy) is: %f\n', eval(fy));
fprintf('The value of eval(fxy) is: %f\n', eval(fxy));
fprintf('The value of eval(fyx) is: %f\n', eval(fyx));

%% e2. integration
syms x y
f = exp(x.^2+y.^2)
intx = int(f,x)
inty = int(f,y)
intxy = int(intx, y)
intyx = int(inty,x)

xmin = -2;
xmax = 2;
ymin = -3; 
ymax = 3;
intx = int(f,x,xmin, xmax);
inty = int(f,y, ymin, ymax);
intxy = int(fx, y, ymin, ymax);
intyx = int(fy, x, xmin, xmax);
fprintf('when xmin=-2, xmax = 2; ymin = -3, ymax = 3\n');
intx
inty
intxy
intyx

[X,Y]=meshgrid(xmin:0.1:xmax,ymin:0.1:ymax);
Z=exp(X.^2+Y.^2);
surf(X,Y,Z);
set(gcf,'Position',[100,100,600,400])
title('f=exp(x^2+y^2)');
print 2Dfct.png -dpng

F=@(X,Y) exp(X.^2+Y.^2);
fprintf('The value of the integral using integral2: %f\n', integral2(F,xmin,xmax,ymin,ymax));
