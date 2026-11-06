// Basic WAV inspection and playback
[x, Fs, bits] = wavread("D:\SCI\Lab4\input.wav");
x = double(x);
if size(x, 1) > 1 then
    x = mean(x, 1);
end
n = 0:(size(x, 2) - 1);
t = n / Fs;
disp(Fs, "Sampling rate (Hz): ");
disp(bits, "Bits per sample:");
scf(4); clf();
plot(t, x);
title("Audio waveform");
xlabel("Time (s)");
ylabel("Amplitude");
xgrid();
playsnd(x, Fs);
