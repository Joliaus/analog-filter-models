Wn = 200/600;               % Normalized stopband edge frequency
[z,p,k] = cheby2(4,50,Wn,'low');
[sos] = zp2sos(z,p,k);      % Convert to SOS form
h = fvtool(sos);             % Plot magnitude response