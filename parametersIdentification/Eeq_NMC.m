function results=Eeq_NMC(y)
load NMC811.txt;
results=interp1(NMC811(:,1),NMC811(:,2),y,"linear","extrap");
end