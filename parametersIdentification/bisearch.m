function [thetap0,thetan0]=bisearch(V,re)
thetap=re(1);
Qp=re(2);
thetan=re(3);
Qn=re(4);

maxiter=100;
tol=1e-6;

total_li=thetap*Qp+thetan*Qn;

x_high=0.99;
x_low=0.01;
x(1)=0.5;
for i=1:maxiter
thetap=x(i);
lipos=thetap*Qp;
lineg=total_li-lipos;
thetan=lineg/Qn;
dv(i)=Eeq_NMC(thetap)-Eeq_MCMB(thetan)-V;

if abs(dv(i))<=tol
    break;
elseif dv(i)<=0
    x_high=x(i);
else
    x_low=x(i);
end
x(i+1)=(x_high+x_low)/2;

end
thetap0=thetap;
thetan0=thetan;

end