g=9.8;
u=input('enter the  value of speed ');
w=input('enter the wind velocity w.r.t. airplane ');
x= linspace(0,5000,200);
y=(1/0.04)*log(cosh( (exp(0.04*x)-1) *sqrt(g*0.04)/(u*0.04) ) );%new equation which is plotted
y1=(1/0.04)*log(cosh( (exp(0.04*x)-1) *sqrt(g*0.04)/((u+2)*0.04) ) );
y2=(1/0.04)*log(cosh( (exp(0.04*x)-1) *sqrt(g*0.04)/((u-2)*0.04) ) );
h1=axes;
%plot(x,y,x,y2);
plot(x,y,x,y1,x,y2);
%xlim([0 10000]);
ylim([0 1000]);
%set(gca,'Xscale','log');
set(h1, 'Ydir', 'reverse');
xlabel('Horizontal distance (in meters)');
ylabel('Vertical distance (in meters)');
legend('Without wind','With positive wind','With negative wind');
