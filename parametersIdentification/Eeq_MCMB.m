function results=Eeq_MCMB(x)
load MCMB.txt;
results=interp1(MCMB(:,1),MCMB(:,2),x,"linear","extrap");
end