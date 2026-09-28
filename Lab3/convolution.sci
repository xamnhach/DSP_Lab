clc; clear;
function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    clf();
    subplot(3, 1, 1); plot2d3(nx, xn); plot(nx, xn, 'b.');
    title('Input x(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 2); plot2d3(nh, hn); plot(nh, hn, 'g.');
    title('Impulse Response h(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
    
    subplot(3, 1, 3); plot2d3(ny, yn); plot(ny, yn, 'r.');
    title('Output Convolution y(n) = x(n)*h(n)'); xlabel('n'); ylabel('Amplitude'); xgrid(1);
endfunction
