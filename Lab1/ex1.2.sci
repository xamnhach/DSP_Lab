// Clears workspace
clc; clear;

// --- 1. Signal Parameters ---
f = 50;                     // Analog frequency (Hz)
T = 1 / f;                  // Period (seconds) = 0.02s
Fs = 300;                   // Sampling rate (samples/sec)
Ts = 1 / Fs;                // Sampling period
delta = 0.1;                // Quantization step

// --- 2. Analog Signal xa(t) in 5 periods ---
t = 0 : 0.0001 : 5*T;       // Continuous time vector (high resolution)
xa = 3 * sin(100 * %pi * t);

// --- 3. Discrete Signal x(n) in 5 periods ---
// 1 period = 6 samples, 5 periods = 30 samples (n from 0 to 29)
n = 0 : 29;
t_s = n * Ts;               // Sampling time points
x_n = 3 * sin(100 * %pi * t_s);

// --- 4. Quantized Signal xq(n) using Truncation method ---
xq_n = delta * floor(x_n / delta);

// --- 5. Plotting all 3 signals in a single window ---
clf(); // Clear current figure window

// Graph 1: Analog Signal xa(t)
subplot(3, 1, 1);
plot(t, xa, 'r-', 'LineWidth', 2);
xtitle('1. Analog Signal xa(t) = 3*sin(100*%pi*t)', 'Time t (s)', 'Amplitude');
xgrid(1);

// Graph 2: Discrete-Time Signal x(n)
subplot(3, 1, 2);
plot2d3(n, x_n, style=2);   // Stem plot for discrete signals
plot(n, x_n, 'b.', 'MarkerSize', 10);
xtitle('2. Discrete-Time Signal x(n) = 3*sin(%pi*n / 3)', 'Sample index n', 'Amplitude');
xgrid(1);

// Graph 3: Quantized Signal xq(n)
subplot(3, 1, 3);
plot2d3(n, xq_n, style=5);
plot(n, xq_n, 'k.', 'MarkerSize', 10);
xtitle('3. Quantized Signal xq(n) (Truncation, delta = 0.1)', 'Sample index n', 'Amplitude');
xgrid(1);
