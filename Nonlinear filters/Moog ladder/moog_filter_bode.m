% Definition of parameters
k = 3; % Replace 'k' with the desired value if needed
W = 2.*pi.*(0:10:22050);

% Frequency conversion in Hz 
fa = W./(2.*pi);

% 3dB point plot
Threedb_point = -3; % dB
semilogx(fa, Threedb_point.*ones(1, length(fa)), 'k--');
grid
hold on

% Low-pass filter plot
numerator_lp = 1;
denominator_lp = [1, 4, 6, 4, 1];
[Hlp, wa] = freqs(numerator_lp, denominator_lp + k, W);
fa = wa./(2.*pi);
semilogx(fa, 20.*log10(abs(Hlp)), 'b');

% Set labels and title
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Bode Diagram of the Moog Ladder Filter (4th order)');

% Set legend
legend('3dB Point', 'Low-Pass Filter');

hold off