clc; clear;
function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    // Tính dải chỉ số n của hai tín hiệu
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    // Dải chỉ số n chung cho y(n)
    n = min(min(n1), min(n2)) : max(max(n1), max(n2));
    
    // Tạo vectơ đệm số 0
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1(find((n >= min(n1)) & (n <= max(n1)))) = x1n;
    y2(find((n >= min(n2)) & (n <= max(n2)))) = x2n;
    
    yn = y1 + y2;
    yorigin = find(n == 0);
    
    // Vẽ đồ thị 3 tín hiệu
    clf();
    subplot(3, 1, 1); plot2d3(n1, x1n); plot(n1, x1n, 'b.');
    title('x1(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 2); plot2d3(n2, x2n); plot(n2, x2n, 'g.');
    title('x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 3); plot2d3(n, yn); plot(n, yn, 'r.');
    title('y(n) = x1(n) + x2(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
endfunction
