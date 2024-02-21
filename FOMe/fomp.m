function dcsep=fomp(rp,Dsp,J)
taup=rp^2/Dsp;
% taun=rn^2/Dsn;

% ap=[1,12/95*sqrt(taup)];
% an=[1,12/95*sqrt(taun)];
x=[0.0691698037605222	0.205651596403431];
% na=[0,0.5];
% b=0.2;
% nb=0;
% ap=[1,0.142570867246456*sqrt(taup)];
ap=[1,x(1)*sqrt(taup)];
% an=[1,0.142570867246456*sqrt(taun)];
% 
na=[0,0.5];
% b=0.244188370659625;
b=x(2);
nb=0;

tfp=fotf(ap,na,b,nb);
% tfn=fotf(an,na,b,nb);

dcsep=lsim(tfp,J,1:length(J))*rp/Dsp;
% dcsen=lsim(tfn,I,1:length(I))*rn/Dsn;
end