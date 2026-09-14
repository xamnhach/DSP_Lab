clc; clear; clf();
n = -5:5;
ur = n .* bool2s(n >= 0);

plot2d3(n, ur);
plot(n, ur, 'r.', 'MarkerSize', 10);
title('Unit Ramp Signal ur(n)');
xlabel('Index n');
ylabel('Amplitude');
xgrid(1);
