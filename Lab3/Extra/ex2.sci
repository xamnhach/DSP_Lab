clc; clear; clf();
n = -5:6;
// Tín hiệu x(n) từ đồ thị P2.2
x = 0.5*(n>=-2 & n<=-1) + 1*(n>=0 & n<=2) + 0.5*(n>=3 & n<=4);

// (a) x(n-2)
x_a = 0.5*((n-2)>=-2 & (n-2)<=-1) + 1*((n-2)>=0 & (n-2)<=2) + 0.5*((n-2)>=3 & (n-2)<=4);
// (b) x(4-n)
x_b = 0.5*((4-n)>=-2 & (4-n)<=-1) + 1*((4-n)>=0 & (4-n)<=2) + 0.5*((4-n)>=3 & (4-n)<=4);
// (d) x(n)u(2-n)
x_d = x .* bool2s(n <= 2);
// (e) x(n-1)*delta(n-3)
x_e = (0.5*((n-1)>=-2 & (n-1)<=-1) + 1*((n-1)>=0 & (n-1)<=2) + 0.5*((n-1)>=3 & (n-1)<=4)) .* bool2s(n==3);

subplot(2,2,1); plot2d3(n, x_a); title('(a) x(n-2)'); xgrid(1);
subplot(2,2,2); plot2d3(n, x_b); title('(b) x(4-n)'); xgrid(1);
subplot(2,2,3); plot2d3(n, x_d); title('(d) x(n)u(2-n)'); xgrid(1);
subplot(2,2,4); plot2d3(n, x_e); title('(e) x(n-1)\delta(n-3)'); xgrid(1);
