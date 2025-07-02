% Dénominateurs des filtres passe-bas
denominator_lp1 = [1, 21.54, 164340];
denominator_lp2 = [1, 31.47, 350785];
denominator_lp3 = [1, 58.95, 204990];
denominator_lp4 = [1, 69.04, 281223];

% Plage de fréquences pour le tracé
omega = logspace(2, 4, 1000); % Plage logarithmique de fréquences

% Fréquences de coupure du filtre passe-bande
f1 = 400; % Hz
f2 = 600; % Hz

% Transformation de fréquence pour le filtre passe-bande
[num_bp, den_bp] = lp2bp(conv(denominator_lp1, denominator_lp2), conv(denominator_lp3, denominator_lp4), f1, f2);

% Initialisation des vecteurs pour gains et phases
gaindB = zeros(size(omega));
phaseDeg = zeros(size(omega));

% Calcul des gains et phases pour chaque fréquence
for i = 1:length(omega)
    s = 1i*omega(i);
    H = polyval(num_bp, s) / polyval(den_bp, s);
    gaindB(i) = 20 * log10(abs(H));
    phaseDeg(i) = angle(H) * 180 / pi;
end

% Tracé du diagramme de Bode (Gains en dB)
subplot(2, 1, 1);
semilogx(omega, gaindB);
grid on;
title('Diagramme de Bode - Filtre passe-bande de 8e ordre');
ylabel('Gain (dB)');

% Tracé du diagramme de Bode (Phases)
subplot(2, 1, 2);
semilogx(omega, phaseDeg);
grid on;
xlabel('Fréquence (rad/s)');
ylabel('Phase (degrés)');
