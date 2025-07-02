% Coefficients de la fonction de transfert
num = [36, 0, 0];
den = [1, 8.49, 116, 339.4, 1600];
%den = [1, 19.8, 196, 792, 1600];

% Plage de fréquences
omega = logspace(-1, 2, 1000); % Plage logarithmique de fréquences

% Initialisation des vecteurs pour gains et phases
gaindB = zeros(size(omega));
phaseDeg = zeros(size(omega));

% Calcul des gains et phases pour chaque fréquence
for i = 1:length(omega)
    s = 1i*omega(i);
    H = polyval(num, s) / polyval(den, s);
    gaindB(i) = 20 * log10(abs(H));
    phaseDeg(i) = angle(H) * 180 / pi;
end

% Tracé du diagramme de Bode (Gains en dB)
subplot(2, 1, 1);
semilogx(omega, gaindB);
grid on;
title('Diagramme de Bode');
ylabel('Gain (dB)');

% Tracé du diagramme de Bode (Phases)
subplot(2, 1, 2);
semilogx(omega, phaseDeg);
grid on;
xlabel('Fréquence (rad/s)');
ylabel('Phase (degrés)');
