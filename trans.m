function u = trans(x)
zeta1=3.634502704;
lamda1=17.03893;
zeta2=1.961080079;
lamda2=20.15279;
x1=x(1);
x2=x(2);
u=zeros(2,1);
u(1)=(log(x1)-lamda1)/zeta1;
u(2)=(log(x2)-lamda2)/zeta2;
end