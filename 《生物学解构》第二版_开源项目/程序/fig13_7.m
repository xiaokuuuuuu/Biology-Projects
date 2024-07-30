close all

x=1999:2016;
y1=[57 51 46 23 49 19 57 74 92 116 55 4 8 9 2 24 44 62];
y2=[180 55 103 160 272 155 183 163 261 199 72 46 40 85 45 78 99 89];
plot(x,y1,'b^-',x,y2,'ro-',[1999 2016],[mean(y1) mean(y1)],'b--',[1999 2016],[mean(y2) mean(y2)],'r--',LineWidth=1)
xlim([1999 2016])
xticks(x)
t=legend("春季","秋季","春季均值","秋季均值","Location","best");
t.NumColumns=2;
xlabel("年份")
ylabel("个体数（个）")