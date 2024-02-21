function value=findre150(x)
load NMCC40_150.mat;
I=NMCC40_150.Cur(1:end-1);
V=NMCC40_150.Vol(1:end-1);
Q=NMCC40_150.Cap(1:end-1);
change_thetap=Q/1000;
theta_p=x(1)+change_thetap/x(2);
change_thetan=Q/1000;
theta_n=x(3)-change_thetan/x(4);
Vsim=Eeq_NCA(theta_p)-Eeq_MCMB(theta_n);
value=norm(V-Vsim,2);
end