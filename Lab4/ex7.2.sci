clc;
clear;
clf();

x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];

N = length(x);
M = length(h);

C = zeros(N, M);

for n = 1:N
    for k = 1:M
        ix = n - k + 1;

        while ix < 1
            ix = ix + N;
        end

        while ix > N
            ix = ix - N;
        end

        C(n, k) = x(ix);
    end
end

y_matrix = C * h';
y = y_matrix';

disp(C, "Circular convolution matrix:");
disp(y_matrix, "Circular convolution:");

expected = [4; -4; -3; 0; 3];

if or(y_matrix <> expected) then
    error("Incorrect result.");
end

n_idx = 0:N-1;

ex = abs(x).^2;
ey = abs(y).^2;

scf(2);
clf();

subplot(3,1,1);
plot2d3(n_idx, x);
title("Input Signal x(n)");
xlabel("n");
ylabel("Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n_idx, y);
title("Circular Convolution y(n)");
xlabel("n");
ylabel("Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n_idx, [ex; ey]');
title("Sample-wise Energy");
xlabel("n");
ylabel("Squared Amplitude");
legend(["|x(n)|^2", "|y(n)|^2"]);
xgrid();

disp(sum(ex), "Energy of x(n):");
disp(sum(ey), "Energy of y(n):");
