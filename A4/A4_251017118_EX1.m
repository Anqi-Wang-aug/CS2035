%% a: meshing
xs = linspace(-8, 8, 201);
ys = linspace(-8, 8, 201);
[X Y] = meshgrid(xs, ys);
Z1 = 10*sinc(sqrt(X.^2+Y.^2));
Z2 = 18-3*(sqrt(X.^2+Y.^2)).^(-1)+sin(sqrt(X.^2+Y.^2))+sqrt(200-(X.^2+Y.^2)+10*sin(X)+10*sin(Y))/1000;
figure
mesh(X,Y,Z1)
figure
mesh(X,Y,Z2)

%% b: numerical integration
fun1 = @(X,Y) 10*sinc(sqrt(X.^2+Y.^2));
fun2 = @(X,Y) 18-3*(sqrt(X.^2+Y.^2)).^(-1)+sin(sqrt(X.^2+Y.^2))+sqrt(200-(X.^2+Y.^2)+10*sin(X)+10*sin(Y))/1000;
xmin = -8;
xmax = 8;
ymin = -8;
ymax = 8;
num_area1 = integral2(fun1, xmin, xmax, ymin, ymax);
num_area2 = integral2(fun2, xmin, xmax, ymin, ymax);
str1 = strcat('area under the curve = ', string(num_area1));
str2 = strcat('area under the curve = ', string(num_area2));
figure
mesh(X,Y,Z1)
t = text(X(4), Y(3),str1, 'FontName', 'Times New Roman', 'FontSize', 14, 'Color', 'magenta');
figure
mesh(X,Y,Z2)
t = text(X(4), Y(3), str2, 'FontName', 'Times New Roman', 'FontSize', 14, 'Color', 'magenta');

%% c: add x and y label
title1 = '$f_1 = 10\frac{sin(\pi \sqrt{x^2+y^2})}{\pi \sqrt{x^2+y^2}}$';
title2 = '$f_2 = 18-\frac{3}{\sqrt{x^2+y^2}}+sin(\sqrt{x^2+y^2})+\frac{\sqrt{200-(x^2+y^2)+10sin(x)+10sin(y)}}{1000}$';
figure
mesh(X,Y,Z1)
t = text(X(4), Y(3),str1, 'FontName', 'Times New Roman', 'FontSize', 14, 'Color', 'magenta');
title(title1, 'Interpreter','latex', 'FontSize', 14);
x1 = xlabel('x');
x1.Color = 'blue';
y1 = ylabel('y');
y1.Color = 'green';
z1 = zlabel('z');
z1.Color = 'red';

figure
mesh(X,Y,Z2)
t = text(X(4), Y(3), str2, 'FontName', 'Times New Roman', 'FontSize', 14, 'Color', 'magenta');
title(title2, 'interpreter', 'latex', 'FontSize', 14)
x2 = xlabel('x');
x2.Color = 'blue';
y2 = ylabel('y');
y2.Color = 'green';
z2 = zlabel('z');
z2.Color = 'red';

%% d: integral
syms x y
f1 =10* sinc ( sqrt ( x ^2+ y ^2));
sym_area1 = eval(int ( int ( f1 ,y , ymin , ymax ) ,x , xmin , xmax ));
f2 =18 -3/ sqrt ( x ^2+ y ^2)+ sin ( sqrt ( x ^2+ y ^2))+( sqrt (200 -( x ^2+ y ^2)+10* sin ( x )+10* sin ( y )))/1000;
sym_area2 = eval ( int ( int ( f2 ,y , ymin , ymax ) ,x , xmin , xmax ));
sym_area1
sym_area2
% both of them are not integrable because their eval() returns the equation