close all

x=1999:2011;
y1=[55 43 58 39 72 43 72 112 67 71 48 45 50];
y2=[476 212 213 275 325 312 833 471 693 539 1067 471 319];
plot(x,y1,'b^-',x,y2,'ro-',[1999 2011],[mean(y1) mean(y1)],'b--',[1999 2021],[mean(y2) mean(y2)],'r--',LineWidth=1)
xlim([1999 2011])
xticks(x)
t=legend("春季","秋季","春季均值","秋季均值","Location","northwest");
t.NumColumns=2;
xlabel("年份")
ylabel("个体数（个）")