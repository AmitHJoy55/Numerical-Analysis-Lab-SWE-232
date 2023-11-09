function RootF2 = task_103 ()

function y = f(x)
    y = x.^3 - 2*x.^2- 4 ;
end

a = 0;
b = 3;
tol = 1e-5;
itr = 0;
roots = [];

while (b - a) / 2 > tol
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));
    roots = [roots; c];
    if f(c) == 0
        break;
    elseif f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
    itr = itr + 1;
end

fprintf('%d iterations needed & The Root is  %f\n',itr,  roots(end));

 x = 0:0.1:10;
 y = f(x);

 figure;
 plot(x, y);
hold on;
plot(c, f(c), 'og');
xlabel('x');
ylabel('function values');
title('Bisection Method');
set(gca, 'xAxisLocation', 'origin');
legend('function values ', 'Roots');
grid on;



endfunction
