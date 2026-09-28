clc; clear; clf();
n = 0:5;
x = bool2s(n>=0 & n<=3);

// y(n) = x(n^2)
y = bool2s((n.^2)>=0 & (n.^2)<=3);

// y(n-2)
y_shift2 = [0, 0, y(1:$-2)];

// x2(n) = x(n-2)
x2 = bool2s((n-2)>=0 & (n-2)<=3);

// y2(n) = T[x2(n)] = x2(n^2)
y2 = bool2s(((n.^2)-2)>=0 & ((n.^2)-2)<=3);

subplot(2,1,1); plot2d3(n, y_shift2); plot(n, y_shift2, 'ro');
title('y(n-2)'); xlabel('n'); xgrid(1);

subplot(2,1,2); plot2d3(n, y2); plot(n, y2, 'bs');
title('y2(n) = T[x(n-2)]'); xlabel('n'); xgrid(1);
