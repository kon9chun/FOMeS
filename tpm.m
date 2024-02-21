function value=tpm(R,Ds,J)
% t=1:length(J);

q=14870*4/3*pi*R(1)^3;
for i=1:length(J)
    dq=-30*Ds/R(i)/R(i)*q+45/2/R(i)/R(i)*J(i);
    q=dq+q;
    dconcentration(i)=8*R(i)/35*q+R(i)/35/Ds*J(i);
end
value=dconcentration';

% for i=t
% 
% end
end