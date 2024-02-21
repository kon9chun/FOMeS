function results=Eeq_NCA(y)
load NCA.txt;
results=interp1(NCA(:,1),NCA(:,2),y,"linear","extrap");
end