clc; clear; clf();
x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
Lx = length(x);
Lh = length(h);
H = zeros(Lx + Lh - 1, Lx);

for column = 1:Lx
    for row = 1:Lh
        H(row + column - 1, column) = h(row);
    end
end
y = (H * x')';

nx = 0:(Lx - 1);
ny = 0:(length(y) - 1);
ex = abs(x).^2;
ey = abs(y).^2;

scf(7); clf();
subplot(3, 1, 1); 
plot2d3(nx, x); 
plot(nx, x, 'r.', 'MarkerSize', 15);
title("x(n)"); xlabel("n"); xgrid();

subplot(3, 1, 2); 
plot2d3(ny, y); 
plot(ny, y, 'b.', 'MarkerSize', 15);
title("y(n)"); xlabel("n"); xgrid();

energyx = zeros(1, length(ey));
energyx(1:length(ex)) = ex;
subplot(3, 1, 3);
plot2d3(ny, [energyx; ey]');
title("Sample-wise energy"); xlabel("n"); ylabel("Squared amplitude");
xgrid(); legend(["|x(n)|^2", "|y(n)|^2"]);

disp(sum(ex), "Total energy of x:");
disp(sum(ey), "Total energy of y:");
