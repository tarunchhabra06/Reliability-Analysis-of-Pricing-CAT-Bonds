close all;clear all;clc
% Initializing the Variables
i=1;
zeta1=3.634502704;
lamda1=17.03893;
mu1=exp(lamda1+0.5*zeta1^2)
sigma1=mu1*sqrt(exp(zeta1^2)-1)
zeta2=1.961080079;
lamda2=20.15279;
mu2=exp(lamda2+0.5*zeta2^2)
sigma2=mu2*sqrt(exp(zeta2^2)-1)
epsilon1=10^-12; epsilon2=10^-12;
M=[mu1; mu2];
R=[1 0; 0 1];
D=diag([sigma1 sigma2]);
L=chol(R,'lower');
x0=M;
u=trans(x0);
G0=gfunc(M);
u_old=u;
J_ux=diag(Jacobian_ux(x0));
J_xu=inv(J_ux);
G_u=G0;
gradG_u=J_xu'*gradg(x0);
alpha=-gradG_u/norm(gradG_u);
beta=zeros(100,1);

while (abs(G_u/G0)>epsilon1 || norm(u-alpha'*u_old*alpha)>epsilon2)
    x=transinv(u);
    u_old=u;
    J_ux=diag(Jacobian_ux(x));
    J_xu=inv(J_ux);
    G_u=gfunc(x);
    gradG_u=J_xu'*gradg(x);
    alpha=-gradG_u/norm(gradG_u);
    u=(G_u/norm(gradG_u)+alpha'*u_old)*alpha;
    beta=alpha'*u;
    i=i+1;
end

disp('beta=')
disp(alpha'*u)
disp('u_sol=')
disp(u)
disp('x_sol=')
disp(transinv(u))
disp('alpha=')
disp(alpha)
disp('Number of Iterations=')
disp(i)
pf=normcdf(-beta)