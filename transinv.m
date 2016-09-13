function x = transinv(u)

zeta1=3.634502704;
lamda1=17.03893;
zeta2=1.961080079;
lamda2=20.15279;
u1=u(1);
u2=u(2);
x=zeros(2,1);
x(1)=exp(zeta1*u1+lamda1);
x(2)=exp(zeta2*u2+lamda2);

end