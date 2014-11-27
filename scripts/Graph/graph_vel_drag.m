g=9.8;
k=input('Enter the value of k:  ');
t=linspace(0,25,200);
v1=sqrt(g/k)*tanh(t*sqrt(g*k));
plot(t,v1);
xlabel('Time (in s)');
ylabel('Velocity (in m/s)');