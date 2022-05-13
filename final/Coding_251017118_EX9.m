
mu = [0 0];
sigma = [1 0.45; 0.45 0.5];
x1 = -3:0.2:3;
x2 = -3:0.2:3;
[X1, X2] = meshgrid(x1, x2);
X = [X1(:) X2(:)];
y = mvnpdf(X,mu,sigma);
y = reshape(y,length(x2), length(x1));
figure
mesh(x1, x2, y)
axis([-3 3 -3 3 0 0.3])
zlabel('Probability Density')
xlabel('x1')
ylabel('x2')
alpha(0)
hold on
r = mvnrnd(mu,sigma,500);
plot(r(:,1),r(:,2),'.r')

sigma = [1 0; 0 1];
y = mvnpdf(X,mu,sigma);
y = reshape(y,length(x2), length(x1));
figure
mesh(x1, x2, y)
axis([-3 3 -3 3 0 0.3])
zlabel('Probability Density')
xlabel('x1')
ylabel('x2')
alpha(0)
hold on
r = mvnrnd(mu,sigma,500);
plot(r(:,1),r(:,2),'.r')