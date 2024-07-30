close all

t=linspace(0,5,1000);
n1=20.*(2.^t);
n2=20.*(3.^t);
n3=1.*(3.^t);
plot(t,n1,'r',t,n2,'b',t,n3,'g',"LineWidth",1.5)
set(gca,"FontName","Times New Roman")