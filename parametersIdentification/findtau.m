function value=findtau(x1)
% x1=[4612.98543361585	5000];
taup=x1(1);
taun=x1(2);

R_ohm=0.03372;
load nmc_cccd.mat;

I=nmc_cccd.Cur(3601:end)/1000;
V=nmc_cccd.Vol(3601:end);
% Q=nmc_cccd.Q(3601:end);
% t=nmc_cccd.t(3601:end);

% x=[0.278341730585941,3.61137408174925,0.987069383657047,2.70544455127934];
x=[0.26,3.61137408174925,0.9966,2.70544455127934];
thetap0=x(1);
Qp=x(2);
thetan0=x(3);%x(3);
Qn=x(4);

dthetap_surf=fom(taup,I)/3600/Qp/3;
thetap=thetap0-cumsum(I/3600/Qp);
thetap_surf=thetap-dthetap_surf;

dthetan_surf=fom(taun,I)/3600/Qn/3;
thetan=thetan0+cumsum(I/3600/Qn);
thetan_surf=thetan+dthetan_surf;

V_fom=Eeq_NMC(thetap_surf)-Eeq_MCMB(thetan_surf)+I*R_ohm;
value=norm(V-V_fom,2);
end