%definition of parameters 
f_cutoff=1000;
w_cutoff=2.*pi.*f_cutoff;
Ka=f_cutoff;
D=sqrt(2)-1.3; %inverse relationship of the resonance
Q=1/D;
D=2;
W=2.*pi.*(0:10:22050);

%frequency conversion in Hz 
[Hhp,wa]=freqs(1,[1 w_cutoff.*D w_cutoff.^2],W);
fa=wa./(2.*pi);

%3dB point plot
Threedb_point = 1/sqrt(2); %linear
Threedb_point = -3; %dB
grid

%high-pass filter plot
plot(fa,abs(Hhp),'b')

