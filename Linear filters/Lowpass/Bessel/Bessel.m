% Coefficients de la fonction de transfert
num = 15;
den = [1, 21, 210, 1260, 4725, 10395, 10395];

% Plage de fréquences pour le tracé (en échelle logarithmique)
frequencies = logspace(-1, 2, 1000); % De 0.1 à 100 rad/s

% Initialisation des tableaux pour stocker les réponses en fréquence
magnitude = zeros(size(frequencies));
phase = zeros(size(frequencies));

% Calcul des réponses en fréquence (amplitude et phase)
for i = 1:length(frequencies)
    omega = frequencies(i);
    s = 1j * omega;
    
    % Calcul de la réponse en fréquence à la fréquence donnée
    H = polyval(num, s) / polyval(den, s);
    
    % Stockage de l'amplitude et de la phase
    magnitude(i) = abs(H);
    phase(i) = angle(H);
end

% Conversion des phases en degrés
phase_deg = rad2deg(phase);

% Tracé du diagramme de Bode (amplitude)
subplot(2, 1, 1);
semilogx(frequencies, 20*log10(magnitude), 'b');
grid on;
title('Diagramme de Bode - Filtre passe-bas de Bessel du 6e ordre');
ylabel('Amplitude (dB)');
xlabel('Fréquence (rad/s)');

% Tracé du diagramme de Bode (phase)
subplot(2, 1, 2);
semilogx(frequencies, phase_deg, 'r');
grid on;
ylabel('Phase (degrés)');
xlabel('Fréquence (rad/s)');

% Ajustement des étiquettes pour la phase
yticks(-180:45:0);
yticklabels({'-180°', '-135°', '-90°', '-45°', '0°'});
