clc,clear,close all
[U1,U2]=meshgrid(-1:0.05:2,-0.5:0.0025:0.5);
zeta1=3.634502704;
lamda1=17.03893;
x1=exp(zeta1*U1+lamda1);
zeta2=1.961080079;
lamda2=20.15279;
x2=exp(zeta2*U2+lamda2);
theta=5*10^9;
z=(theta-x1-x2);
surf(U1,U2,z)
%[C,h]=contour(U1,U2,z,[0 10],'ShowText','on');
%clabel(C,h)
%f1=normpdf(10*U1).*normpdf(10*U2);
%hold on
%[C1,h1]=contour(U1,U2,f1,[1e-4:8e-3:1e-1]);
%clabel(C1,h1)


