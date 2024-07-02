function value=findrecc(x)
load cccv.mat;

c05_v=cccv.C05.vol;
c1_v=cccv.C1.vol;
c2_v=cccv.C2.vol;

c05_i=cccv.C05.cur/1000;
c1_i=cccv.C1.cur/1000;
c2_i=cccv.C2.cur/1000;
x1=[5441.3	9366.3];
thetap0=x(1);
Qp=x(2);
thetan0=x(3);
Qn=x(4);
taup=x1(1);
taun=x1(2);
I=c2_i;
R_ohm=0.0372;
dthetap_surf=fom(taup,I)/3600/Qp/3;
thetap=thetap0-cumsum(I/3600/Qp);
thetap_surf=thetap-dthetap_surf;

dthetan_surf=fom(taun,I)/3600/Qn/3;
thetan=thetan0+cumsum(I/3600/Qn);
thetan_surf=thetan+dthetan_surf;

V_fom=Eeq_NMC(thetap_surf)-Eeq_MCMB(thetan_surf)+I*R_ohm;

value=norm(V_fom-c2_v,2);
end
