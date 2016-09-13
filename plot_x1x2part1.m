clc,clear,close all
[X,Y]=meshgrid(1:1:10,1:1:10);
theta=5*10^9;
Z=theta-(X+Y)*10^9;
zeta1=3.634502704;
lamda1=17.03893;
zeta2=1.961080079;
lamda2=20.15279;
f1=lognpdf(X,lamda1,zeta1).*lognpdf(Y,lamda2,zeta2);
%surf(X,Y,Z)
%hold on;
%Z2=0*(X+Y);
[C,h]=contour(X,Y,f1,[1e-27:1e-27:1e-26]);
clabel(C,h)
hold on
contour(X,Y,Z,[0 10],'ShowText','on')
