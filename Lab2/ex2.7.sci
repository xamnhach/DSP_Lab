clc; clear; clf();
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2; // Kết quả nhân từng phần tử: [0, 0, 2, 9, 0]

subplot(3, 1, 1); plot2d3(n, x1); plot(n, x1, 'b.');
title('x1(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);

subplot(3, 1, 2); plot2d3(n, x2); plot(n, x2, 'g.');
title('x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);

subplot(3, 1, 3); plot2d3(n, y); plot(n, y, 'r.');
title('y(n) = x1(n) * x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
