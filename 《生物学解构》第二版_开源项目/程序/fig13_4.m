close all

t=linspace(-1,2,1000);
y=f(t);

%% 平均变化率
subplot(1,3,1)
hold on
dx=1;
plot(t,y,'k',"LineWidth",1.5)
plot([0 dx],[1 1],'b',"LineWidth",1)
plot([dx dx],[1 f(dx)],'b',"LineWidth",1)
k=(f(dx)-1)/dx;
x1=-1;
y1=k*x1+1;
if y1<0
    y1=0;
    x1=(y1-1)/k;
end
x2=2;
y2=k*x2+1;
plot([x1 x2],[y1 y2],'--r',"LineWidth",1)
xlabel("$t$","Interpreter","latex")
ylabel("$y$","Interpreter","latex")
set(gca,"FontName","Times New Roman")
set(gcf,'Position',[100,300,1000,300]);

%% 
subplot(1,3,2)
hold on
dx=0.2;
plot(t,y,'k',"LineWidth",1.5)
plot([0 dx],[1 1],'b',"LineWidth",1)
plot([dx dx],[1 f(dx)],'b',"LineWidth",1)
k=(f(dx)-1)/dx;
x1=-1;
y1=k*x1+1;
if y1<0
    y1=0;
    x1=(y1-1)/k;
end
x2=2;
y2=k*x2+1;
plot([x1 x2],[y1 y2],'--r',"LineWidth",1)
xlabel("$t$","Interpreter","latex")
ylabel("$y$","Interpreter","latex")
set(gca,"FontName","Times New Roman")

%% 瞬时变化率
subplot(1,3,3)
hold on
dx=0.2;
plot(t,y,'k',"LineWidth",1.5)
k=1;
x1=-1;
y1=k*x1+1;
if y1<0
    y1=0;
    x1=(y1-1)/k;
end
x2=2;
y2=k*x2+1;
plot([x1 x2],[y1 y2],'--r',"LineWidth",1)
xlabel("$t$","Interpreter","latex")
ylabel("$y$","Interpreter","latex")
set(gca,"FontName","Times New Roman")



function y=f(t)
y=3.^t;
end

