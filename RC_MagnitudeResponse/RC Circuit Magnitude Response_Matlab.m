R = 1e3;
L = 10e-6;
C = 10e-9;

f = logspace(2, 8, 1000);
w = 2*pi*f;

H = 1j*w*R*C ./ (1 + 1j*w*R*C + (1j*w).^2*L*C);
absH = abs(H);

semilogx(f, 20*log10(absH))
title('Magnitude Response of RLC Circuit')
xlabel('Frequency (Hz)')
ylabel('Magnitude (dB)')
grid on
