function value=findab(x)
load dcsen_load.txt;
load dcsep_load.txt;
p2d_dcsen=dcsen_load(:,2);
p2d_dcsep=dcsep_load(:,2);
Dsn=3.9e-14;
Rsn=12.5e-6;
Dsp=1e-13;
Rsp=8e-6;

I=-17.5*[ones(3590,1)];
epssn=0.471;
epssp=0.297;
F=96485.33289;
A=1;
Ln=100e-6;
Lp=183e-6;
Jn=I*Rsn/3/epssn/F/A/Ln;
Jp=-I*Rsp/3/epssp/F/A/Lp;


a=x(1);
b=x(2);
taun=Rsn^2/Dsn;
taup=Rsp^2/Dsp;
an=[1,a*sqrt(taup)];
na=[0,0.5];
nb=0;
tfp=fotf(an,na,b,nb);
dcsep=lsim(tfp,Jp,1:length(Jp))*Rsp/Dsp;

value=norm(dcsep-p2d_dcsep);
end