clear 
close all


m = 40;
e = 1;

w2 = 2;
w1 = 6;
w0 = 2;

xtr = 4*rand(m,1);

ytr = w2*xtr.^2+w1*xtr + w0 + e*randn(m,1);
X = [xtr, ones(m,1)];

m1 = min(xtr);
m2 = max(xtr);
xx = m1:(m2-m1)/100:m2;



figure
plot(xtr,ytr,'ro','LineWidth',1, 'MarkerFaceColor','r')
hold on
%plot(xx, w1*xx + w0, 'g.', 'LineWidth',2)
xlabel('x');
ylabel('y'); 

