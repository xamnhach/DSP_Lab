clc; clear; clf();
n = -1:1;
x = [1, 3, -2];

// x(-n) tương ứng lật ngược dãy x
x_fold = x($:-1:1);

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

// Vẽ 3 đồ thị trong cùng 1 cửa sổ
subplot(3, 1, 1);
plot2d3(n, x); plot(n, x, 'bo');
title('Original Signal x(n)'); xlabel('n'); ylabel('x(n)'); xgrid(1);

subplot(3, 1, 2);
plot2d3(n, xe); plot(n, xe, 'ro');
title('Even Component xe(n)'); xlabel('n'); ylabel('xe(n)'); xgrid(1);

subplot(3, 1, 3);
plot2d3(n, xo); plot(n, xo, 'go');
title('Odd Component xo(n)'); xlabel('n'); ylabel('xo(n)'); xgrid(1);
