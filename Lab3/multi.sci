clc; clear;
function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n = min(min(n1), min(n2)) : max(max(n1), max(n2));
    
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1(find((n >= min(n1)) & (n <= max(n1)))) = x1n;
    y2(find((n >= min(n2)) & (n <= max(n2)))) = x2n;
    
    yn = y1 .* y2;
    yorigin = find(n == 0);
    
    clf();
    subplot(3, 1, 1); plot2d3(n1, x1n); plot(n1, x1n, 'b.');
    title('x1(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 2); plot2d3(n2, x2n); plot(n2, x2n, 'g.');
    title('x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 3); plot2d3(n, yn); plot(n, yn, 'r.');
    title('y(n) = x1(n) * x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
endfunction
