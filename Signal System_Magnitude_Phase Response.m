% Define the range of frequencies to plot
w = linspace(-2*pi, 2*pi, 1000);

% Define the transfer function H(w)
% H = (exp(i*w) - 1) ./ (exp(i*w) - 0.99);
H = (exp(-i*w)).* cos(w)

% Scale the frequency range to pi values
x = w/pi;

% Plot the magnitude and phase of H(w) against the scaled frequency range
figure;
subplot(2,1,1);
plot(x, abs(H));
xlabel('Frequency w (\pi radians/sample)');
ylabel('Magnitude');
title('Magnitude Response');
grid on;

subplot(2,1,2);
plot(x, angle(H));
xlabel('Frequency w (\pi radians/sample)');
ylabel('Phase (rad)');
title('Phase Response');
grid on;
