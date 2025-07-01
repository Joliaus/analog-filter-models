% Définition des paramètres
Q = 1.3;                % Facteur de qualité (résonance)
G = 1000;               % Produit gain-bande passante
C = 1;                  % Capacité
R = 1;                  % Résistance

% Plage de fréquences angulaires
W = 2 * pi * (0:10:22050);
[H, wa] = freqs(-G* (C*R*[1 + 1/(R*C*G) 1/G])^2); [G (G + 1)/Q 1/Q + 2 + G + 1/G 5 + 8/G + 3/G^2 7/G + 6/G^2 3/G^2]; W;

% Conversion des fréquences angulaires en fréquences en Hz
fa = wa / (2 * pi);

% Tracé de la réponse en fréquence du filtre
plot(fa, 20 * log10(abs(H)))
grid on
xlabel('Fréquence (Hz)')
ylabel('Amplitude (dB)')
title('Réponse en fréquence du filtre')

% Affichage
disp(['Résonance Q : ', num2str(Q)])
disp(['Produit gain-bande passante G : ', num2str(G)])
