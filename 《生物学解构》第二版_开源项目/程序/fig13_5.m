t=linspace(0,8,1000);
x=fun(1000,20,2,t);
plot(t,x,"LineWidth",1.5);
ylim([0,1030])
set(gca,"FontName","Times New Roman")

function x=fun(K,x0,r0,t)
x=K./(1+(K/x0-1).*exp(-r0.*t));
end