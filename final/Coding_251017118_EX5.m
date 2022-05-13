xmin = -2; xmax =2; ymin = -2; ymax =2;
npoints = 51;
xs = linspace ( xmin , xmax , npoints ); ys = linspace ( ymin , ymax , npoints );
[X Y] = meshgrid(xs, ys);
z1 = (X.*cos(Y))/2;
z2 = Y.*exp(X.^2-5);
figure

surfc(X,Y,z1);
hold on
mesh(X,Y,z2);
title('3D plot of the functions', 'fontweight','bold', 'fontsize', 16)
xlabel('x', 'FontWeight','bold')
ylabel('y', 'FontWeight','bold')
zlabel('f', 'FontWeight','bold')
txt1 = '$f_1(x,y) = \frac{xcos(y)}{2}$';
txt2 = '$f_2(x,y) = ye^{x^2-5}$';
text(0,0,0.4,txt1, 'Interpreter','latex', 'FontSize',16)
text(0,0,-1, txt2, 'Interpreter','latex','FontSize',16)
shading interp