g=9.8;
u=input('Enter the  value of airplane speed ');
x= linspace(0,5000,200);
y= 0.5*g*(x.^2/u.^2);
y2=(1/0.04)*log(cosh( (exp(0.04*x)-1) *sqrt(g*0.04)/(u*0.04) ) );%new equation which is plotted
h1=axes;
plot(x,y,x,y2);
xlim([0 10000]);
ylim([0 1000]);
set(gca,'Xscale','log');
set(h1, 'Ydir', 'reverse');
xlabel('Horizontal distance (in meters)');
ylabel('Vertical distance (in meters)');
legend('Without air drag','With air drag');
