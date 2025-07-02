% Définition des paramètres
f_cutoff = 1000;             % Fréquence de coupure en Hz
w_cutoff = 2 * pi * f_cutoff; % Fréquence de coupure en rad/s
Ka = f_cutoff;               % Coefficient Ka égal à la fréquence de coupure
D = sqrt(2) - 1.3;           % Relation inverse avec la résonance
Q = 1 / D;                   % Facteur de qualité Q calculé à partir de D
D = 2;                       % Nouvelle valeur de D (peut être ignorée car écrasée plus tard)
W = 2 * pi * (0:10:22050);   % Plage de fréquences angulaires

% Calcul et affichage de la réponse en fréquence du filtre passe-bas
[Hlp, wa] = freqs(w_cutoff^2, [1 w_cutoff * D w_cutoff^2], W);
fa = wa / (2 * pi);          % Conversion des fréquences angulaires en fréquences en Hz
Threedb_point = -3;          % Point de -3 dB
plot(fa, 20 * log10(abs(Hlp))) % Tracé de la réponse en fréquence du filtre passe-bas
hold on

% Tracé d'une ligne en pointillés à -3 dB
plot(fa, Threedb_point * ones(1, length(fa)), 'k--');

grid
D = 0.5;                      % Nouvelle valeur de D
W = 2 * pi * (0:10:22050);    % Plage de fréquences angulaires

% Calcul et affichage de la réponse en fréquence d'un filtre différent (passe-bas)
[Hlp, wa] = freqs(w_cutoff^2, [1 w_cutoff * D w_cutoff^2], W);
fa = wa / (2 * pi);          % Conversion des fréquences angulaires en fréquences en Hz
plot(fa, 20 * log10(abs(Hlp)), 'r-.') % Tracé de la nouvelle réponse en fréquence

% Calcul et affichage de la réponse en fréquence du filtre passe-haut
[Hhp, fa] = freqs(1, [1 Ka/Q Ka^2], W);
plot(fa, abs(Hhp), 'b')      % Tracé de la réponse en fréquence du filtre passe-haut
