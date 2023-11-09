function RootF3 = task_104 ()

function [y, dy] = f(x)
    y = x.^3 - 3*x - 5;
    dy = 3*x.^2 - 3;
end


x0 = 2;
tolerance = 1e-6;

roots = [];
Slope = [];
itr = 0;

while true
    [y, dy] = f(x0);
    x1 = x0 - y / dy;
    roots = [roots; x1];
    Slope = [Slope; [x0, y, dy]];

    if abs(x1 - x0) < tolerance
        break;
    end

    x0 = x1;
    itr = itr + 1;
end

fprintf('%d iterations needed & The Root is :%f\n', itr, roots(end));


x = 0:0.1:3;
[y, dy] = f(x);

figure;
plot(x, y);
hold on;
plot(roots, f(roots), 'ro');
for i = 1:length(roots)
    x_tangent = roots(i) - 1:0.01:roots(i) + 1;
    y_tangent = Slope(i, 2) + Slope(i, 3) * (x_tangent - roots(i));
    plot(x_tangent, y_tangent, 'g--');
end
xlabel('x');
ylabel('functions value');
title('Newton-Raphson Method');
legend('f(x)', 'Roots', 'Tangent Lines');
grid on;


endfunction
