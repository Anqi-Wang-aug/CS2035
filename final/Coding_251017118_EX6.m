%% a search for min and max
[fmin, fmax, xmin, xmax] = search_min_max();
fprintf('maximum of this function is: %f at %.2f\n', fmax, xmax);
fprintf('minimum of this function is: %f at %.2f\n', fmin, xmin);

%% differentiate and evaluate at xmin and xmax
syms x
f = sin(x)/x;
diff(f)
x = xmin;
eval(f)
x = xmax;
eval(f)

%% plot figure
x1 = 0.01:0.01:20;
y = [];
for i=1:1:length(x1)
    y = [y sin(x1(i))/x1(i)];
end
figure
plot(x1,y, '-r')
axis([0.01 20 -0.4 1])
xlabel('x', 'FontWeight','bold', 'FontSize',16)
ylabel('y', 'FontWeight','bold', 'FontSize',16)
title('2D plot of f(x)', 'FontWeight','bold', 'FontSize',16)


function[fmin, fmax, xmin xmax] = search_min_max()
    v = [];
    for i=0.01:0.01:20
        val = sin(i)/i;
        v = [v val];
    end
    fmin = min(v);
    fmax = max(v);
    xmax = find(v==max(v))/100;
    xmin = find(v==min(v))/100;
    
end

