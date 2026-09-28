clc; clear;
function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
    
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    subplot(2, 1, 1);
    plot2d3(nx, xn); plot(nx, xn, 'r.', 'MarkerSize', 12);
    title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(2, 1, 2);
    plot2d3(ny, yn); plot(ny, yn, 'b.', 'MarkerSize', 12);
    title('Folded Signal y(n) = x(-n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
endfunction
