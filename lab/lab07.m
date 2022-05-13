xmin=-10;
ymin=-10;
xmax=10;
ymax=10;
npoints=101;
zmin = -1; 
zmax = 1;
x=linspace(xmin,xmax,npoints);
y=linspace(ymin,ymax,npoints);
[X,Y]=meshgrid(x,y);
degree = 0;
sigma = 2.0;
t = 0.05;

for i = 0 : 1 : 360
    degree = degree+i;
    rad = deg2rad(degree);
    omega_x = cos(rad);
    omega_y = sin(rad);
    Z=exp(-(X.^2+Y.^2)/(2.0*sigma^2)).*sin(2*pi.*(X*omega_x+Y*omega_y));
    surf(X,Y,Z);
    axis([xmin xmax ymin ymax zmin zmax]);
    pause(t)
end

ds = [0 45 90 135]

for i = 1:1:numel(ds)
    rad = deg2rad(ds(i));
    omega_x = cos(rad);
    omega_y = sin(rad);
    Z=exp(-(X.^2+Y.^2)/(2.0*sigma^2)).*sin(2*pi.*(X*omega_x+Y*omega_y));
    figure
    surf(X,Y,Z), title(['theta = ', num2str(ds(i))])
end
