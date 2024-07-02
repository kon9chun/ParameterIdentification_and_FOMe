function V_fom=ConstantDischarge(I,x)
x1=[5441.3	9366.3];
thetap0=x(1);
Qp=x(2);
thetan0=x(3);
Qn=x(4);
taup=x1(1);
taun=x1(2);
R_ohm=0.0372;
dthetap_surf=fom(taup,I)/3600/Qp/3;
thetap=thetap0-cumsum(I/3600/Qp);
thetap_surf=thetap-dthetap_surf;

dthetan_surf=fom(taun,I)/3600/Qn/3;
thetan=thetan0+cumsum(I/3600/Qn);
thetan_surf=thetan+dthetan_surf;

V_fom=Eeq_NMC(thetap_surf)-Eeq_MCMB(thetan_surf)+I*R_ohm;
end