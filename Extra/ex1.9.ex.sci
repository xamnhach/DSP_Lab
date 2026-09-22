Fs = 600;
t = 0:1/10000:0.02; // Thời gian liên tục mô phỏng
xa = sin(480*%pi*t) + 3*sin(720*%pi*t);

n = 0:12; // Các mẫu rời rạc
xn = sin(480*%pi*(n/Fs)) + 3*sin(720*%pi*(n/Fs));
ya = -2*sin(480*%pi*t); // Tín hiệu sau khi tái tạo

clf;
plot(t, xa, 'b'); // Tín hiệu gốc
plot(t, ya, 'r--'); // Tín hiệu bị aliasing
plot2d3(n/Fs, xn, style=2); // Mẫu
legend(['x_a(t)', 'y_a(t) (Reconstructed)', 'x(n)']);
xtitle("Bài 1.9: Hiện tượng Aliasing khi tái tạo", "Thời gian (s)", "Biên độ");
