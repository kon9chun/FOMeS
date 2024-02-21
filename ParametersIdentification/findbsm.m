function value=findbsm(x)
beta=x(1);
sigma=x(2);
m=x(3);
load bsm_n.mat;
Q_loss=bsm_n.Q_loss;
F=bsm_n.F;
% load bsm_p.mat;
% Q_loss=bsm_p.Q_loss;
% F=bsm_p.F;
Q1=Q_loss(1);
N=[1;50;100;150;200;250];
Q=Q1-N*beta*(F/sigma)^(1/m);

value=norm(Q-Q_loss,2);
end