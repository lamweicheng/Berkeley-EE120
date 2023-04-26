% t = 0:0.01:5; % time range
% h = exp(-t) .* cos(2*pi*t) .* (t>=0); % impulse response
% 
% 
% plot(t,h)
% xlabel('Time (s)')
% ylabel('Amplitude')
% title('Impulse Response h(t)')


t = 0:0.01:5; % time range
h = exp(-t) .* cos(2*pi*t) .* (t>=0); % impulse response

% Find peak, trough, and zero-crossings
[~, peak_idx] = max(h);
[~, trough_idx] = min(h);
zero_crossings = t(abs(diff(sign(h)))>0);

% Plot impulse response with labeled features
plot(t,h)
hold on
plot(t(peak_idx), h(peak_idx), 'r.', 'MarkerSize', 15)
plot(t(trough_idx), h(trough_idx), 'g.', 'MarkerSize', 15)
plot(zero_crossings, zeros(size(zero_crossings)), 'kx', 'MarkerSize', 8)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Impulse Response h(t)')

% Add legend
legend('h(t)', 'Peak', 'Trough', 'Zero-crossings')
