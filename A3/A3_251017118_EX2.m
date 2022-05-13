figure
expsinplot(-3, 5)
figure
expsinplot(1, 10)
expsinplots([-5, -2, 10], [20, 10, 5])
expsinsubplot([-5, -2, 10], [20, 10, 5])

function expsinplot(tau, omega)
    t = linspace(0, 10, 1001);
    y = 10.*exp(t/tau).*sin(omega*t);
    plot(t,y, 'r')
    grid on
    title(['y = ' num2str(10) 'e^{t/' num2str(tau) '}' '*sin(' num2str(omega) '*t)'], 'FontSize',14)
    xlabel('t', 'FontSize',14)
    ylabel('y', 'FontSize', 14)
end

function expsinplots(taus, omegas)
    m = length(taus);
    for i=1:1:m
        figure
        expsinplot(taus(i), omegas(i));
    end
end

function expsinsubplot(taus, omegas)
    figure
    m = length(taus);
    for i=1:1:m
        subplot(m, 1, i)
        expsinplot(taus(i), omegas(i));
        hold on
    end
end

