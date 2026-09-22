n = 0:32; // Khảo sát qua 2 chu kỳ
x_e = cos(%pi*n/2) - sin(%pi*n/8) + 3*cos(%pi*n/4 + %pi/3);
plot2d3(n, x_e); // Vẽ đồ thị tín hiệu rời rạc
xtitle("Bài 1.3(e): Tín hiệu tuần hoàn chu kỳ N=16", "n", "x(n)");
