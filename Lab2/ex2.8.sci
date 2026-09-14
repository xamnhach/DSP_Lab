clc; clear; clf();
// Tín hiệu gốc x(n)
n_x = -2:1;
x = [1, -2, 3, 6];

// 1. y1(n) = x(-n)
n_y1 = -1:2;
y1 = x($:-1:1);

// 2. y2(n) = x(n+3) -> trục n bị lùi đi 3 đơn vị
n_y2 = n_x - 3; // n in [-5, -2]
y2 = x;

// 3. y3(n) = 2*x(-(n+2)) -> x(-n) dịch trái 2 đơn vị
n_y3 = n_y1 - 2; // n in [-3, 0]
y3 = 2 * y1;

// --- Vẽ Đồ thị Cặp 1: Original vs y1 ---
scf(0); clf();
subplot(2, 1, 1); plot2d3(n_x, x); plot(n_x, x, 'b.');
title('Original Signal x(n)'); xlabel('n'); ylabel('x(n)'); xgrid(1);
subplot(2, 1, 2); plot2d3(n_y1, y1); plot(n_y1, y1, 'r.');
title('y1(n) = x(-n)'); xlabel('n'); ylabel('y1(n)'); xgrid(1);

// --- Vẽ Đồ thị Cặp 2: Original vs y2 ---
scf(1); clf();
subplot(2, 1, 1); plot2d3(n_x, x); plot(n_x, x, 'b.');
title('Original Signal x(n)'); xlabel('n'); ylabel('x(n)'); xgrid(1);
subplot(2, 1, 2); plot2d3(n_y2, y2); plot(n_y2, y2, 'r.');
title('y2(n) = x(n+3)'); xlabel('n'); ylabel('y2(n)'); xgrid(1);

// --- Vẽ Đồ thị Cặp 3: Original vs y3 ---
scf(2); clf();
subplot(2, 1, 1); plot2d3(n_x, x); plot(n_x, x, 'b.');
title('Original Signal x(n)'); xlabel('n'); ylabel('x(n)'); xgrid(1);
subplot(2, 1, 2); plot2d3(n_y3, y3); plot(n_y3, y3, 'r.');
title('y3(n) = 2*x(-n-2)'); xlabel('n'); ylabel('y3(n)'); xgrid(1);
