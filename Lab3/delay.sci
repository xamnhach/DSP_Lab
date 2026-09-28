clc; clear;
function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin + k;
    // Xác định trục chỉ số n cho x(n) và y(n)
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    // Vẽ đồ thị minh họa
    clf();
    subplot(2, 1, 1);
    plot2d3(nx, xn); plot(nx, xn, 'r.', 'MarkerSize', 12);
    title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(2, 1, 2);
    plot2d3(ny, yn); plot(ny, yn, 'b.', 'MarkerSize', 12);
    title(['Delayed Signal y(n) = x(n - ' + string(k) + ')']); 
    xlabel('n'); ylabel('Amplitude'); xgrid(1);
endfunction
