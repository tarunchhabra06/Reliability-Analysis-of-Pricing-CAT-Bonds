function jac = Jacobian_ux(x)

x1=x(1);
x2=x(2);
zeta1=3.634502704;
zeta2=1.961080079;
jac=zeros(2,1);

jac(1)=1/(zeta1*x1);
jac(2)=1/(zeta2*x2);
end
