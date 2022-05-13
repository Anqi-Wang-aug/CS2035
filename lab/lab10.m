%% q1. multivariate gaussian distribution
mu = [0 0];
Sigma = [0.25 0.3; 0.3 1];

x1 = -3:0.2:3;
x2 = -3:0.2:3;
[X1, X2] = meshgrid(x1, x2);
X = [X1(:) X2(:)];

y = mvnpdf(X, mu, Sigma);
y = reshape(y,length(x2), length(x1));

figure
surf(x1, x2, y)
caxis([min(y(:))-0.5*range(y(:)),max(y(:))])
axis([-3 3 -3 3 0 0.4])
xlabel('x1')
ylabel('x2')
zlabel('Probability Density')

figure
surf(x1, x2, y)
caxis([min(y(:))-0.5*range(y(:)),max(y(:))])
axis([-3 3 -3 3 0 0.4])
xlabel('x1')
ylabel('x2')
zlabel('Probability Density')
view(2)

mu = [1 1];
Sigma = [0.25 0; 0 1];
y = mvnpdf(X, mu, Sigma);
y = reshape(y,length(x2), length(x1));

figure
surf(x1, x2, y)
caxis([min(y(:))-0.5*range(y(:)),max(y(:))])
axis([-3 3 -3 3 0 0.4])
xlabel('x1')
ylabel('x2')
zlabel('Probability Density')

figure
surf(x1, x2, y)
caxis([min(y(:))-0.5*range(y(:)),max(y(:))])
axis([-3 3 -3 3 0 0.4])
xlabel('x1')
ylabel('x2')
zlabel('Probability Density')
view(2)

%% q2. multivariate gaussian random numbers
mu = [2 3];
Sigma = [1 1.5; 1.5 3];
rng('default')  % For reproducibility
R = mvnrnd(mu,Sigma,100);

figure
plot(R(:,1),R(:,2),'+')

Sigma = [1 -1.5; -1.5 3];
rng('default')  % For reproducibility
R = mvnrnd(mu,Sigma,100);

figure
plot(R(:,1),R(:,2),'+')
