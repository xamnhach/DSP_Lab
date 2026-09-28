clc; clear; clf();
n = -5:5;
x = (1 + n/3).*(n>=-3 & n<=-1) + 1.*(n>=0 & n<=3);

// (b1) Fold x(n) then delay 4: x(-n+4)
// (c) Signal x(-n+4)
x_mod = (1 + (-n+4)/3).*((-n+4)>=-3 & (-n+4)<=-1) + 1.*((-n+4)>=0 & (-n+4)<=3);

subplot(2,1,1); plot2d3(n, x); plot(n, x, 'bo');
title('x(n)'); xlabel('n'); xgrid(1);

subplot(2,1,2); plot2d3(n, x_mod); plot(n, x_mod, 'ro');
title('x(-n+4)'); xlabel('n'); xgrid(1);
