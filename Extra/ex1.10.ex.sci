scf(2); clf();

Fs = 1000;
n = 0:40;

xn = 3*cos(600*%pi*n/Fs) + 2*cos(1800*%pi*n/Fs);

x_max = 5; 
x_min = -5; 
L = 1024;
delta = (x_max - x_min) / (L - 1);
xq = round((xn - x_min) / delta) * delta + x_min;

subplot(2, 1, 1);
plot2d3(n, xn); 
plot(n, xn, 'b.');
title('Discrete Signal x(n)'); 
xlabel('n'); 
ylabel('x(n)'); 
xgrid(1);

subplot(2, 1, 2);
plot2d3(n, xq); 
plot(n, xq, 'r.');
title('Quantized Signal xq(n) (1024 levels)'); 
xlabel('n'); 
ylabel('xq(n)'); 
xgrid(1);
