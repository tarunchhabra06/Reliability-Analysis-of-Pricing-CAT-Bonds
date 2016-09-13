clc, clear,close all
%xsol can be changed
xsol=10^9*[4.2701;0.7299];
%usol,alpha,lamda,zeta,beta can be changed
usol=[1.4131;0.1303];
alpha=[0.9958;0.0918];
zeta1=3.634502704;
lamda1=17.03893;
zeta2=1.961080079;
lamda2=20.15279;
beta=1.4191;
R=[1 0;0 1];
L=chol(R,'lower');
theta=5*10^9;
e=0.015e9;
x1=xsol(1)+e
x2=theta-x1
x=[x1;x2];
fx1=lognpdf(x(1),lamda1,zeta1);
Fx1=logncdf(x(1),lamda1,zeta1);
fx2=lognpdf(x(2),lamda2,zeta2);
Fx2=logncdf(x(2),lamda2,zeta2);

z=[norminv(Fx1);norminv(Fx2)];
u=inv(L)*z
alpha_new=u/norm(u)
k=sqrt(2*(1-alpha'*alpha_new))/norm(usol-u)
pf=normcdf(-beta)/sqrt(1+beta*k)
beta_gen=norminv(1-pf)