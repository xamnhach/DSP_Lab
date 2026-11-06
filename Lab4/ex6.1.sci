clc; clear; clf();
x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
Lx = length(x);
Lh = length(h);
ny = 0:(Lx + Lh - 2);
y = zeros(1, length(ny));

for i = 1:length(y)
    n = i - 1;
    for k = 0:(Lh - 1)
        ix = n - k + 1;
        if ix >= 1 & ix <= Lx then
            y(i) = y(i) + h(k + 1) * x(ix);
        end
    end
end

nx = 0:(Lx - 1);
ex = abs(x).^2;
ey = abs(y).^2;

scf(6); clf();
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
