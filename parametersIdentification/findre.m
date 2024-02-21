function value=findre(x)
load nmc1_30.mat;
I=nmc1_30.Cur;
V=nmc1_30.Vol;
Q=nmc1_30.Q;
change_thetap=Q/1000;
theta_p=x(1)+change_thetap/x(2);
change_thetan=Q/1000;
theta_n=x(3)-change_thetan/x(4);
Vsim=Eeq_NMC(theta_p)-Eeq_MCMB(theta_n);
value=norm(V-Vsim,2);
end