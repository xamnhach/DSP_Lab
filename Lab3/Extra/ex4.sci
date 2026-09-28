clc; clear; clf();
n = -2:2;
x = [2, 3, 4, 5, 6];
x_fold = x($:-1:1);

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

subplot(3,1,1); plot2d3(n, x); title('x(n)'); xgrid(1);
subplot(3,1,2); plot2d3(n, xe); title('Even xe(n)'); xgrid(1);
subplot(3,1,3); plot2d3(n, xo); title('Odd xo(n)'); xgrid(1);
