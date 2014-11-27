display('This is a program that implements the path of free falling body from an aircraft considering the wind effect!'); %we are following the KGS system
display('The body assumed to be spherical in shape');%inputs will be: height, speed, radius, mass
display('Lets do this!!');
u=input('Enter the speed of the aircraft (in m/s):  ');%currently the implementation doesnt convert but it will be added in the future
h=input('Enter the height of the aircraft (in m):  ');%same story
w=input('Enter the wind speed (in m/s):  ');
theta=input('Enter the angle of the wind to the plane (in degrees): ');
g=9.8;
vw=w*cosd(theta);
vwsin=w*sind(theta);
display('Lets calculate in VERTICAL direction first!!')
t=sqrt((2*h)/g);
display(t,'Time taken to reach the ground vertically will be');
v0=g*t;
k=input('Enter the value of k: ');
v1=sqrt(g/k)*tanh(t*sqrt(g*k)); %in vertical direction, wind is not significant
display(v1,'velocity of object in vertical direction will be'); 
%y=(1/k)*log(cosh(sqrt(g*k)*t));
%display(y,'displacement of the object(in vertical direction)');
v2=(u+vw)/(1+(u+vw)*k*t);
display(v2,'velocity of object in horizontal motion is')
x1=(1/k)*(log(1+((u+vw)*sqrt(k/g)*acosh(exp(k*h)))));
display(strcat('The distance covered with air drag ', num2str(x1)));
display('Lets find out the value of alpha (angle made in x-z plane)');
%alpha=atand((w*sind(theta))/(v0+vw));
alpha=atand(vwsin/(u+vw));
display(alpha, 'The angle made in the x-z plane is: ');
Rxz=(cosd(alpha)/k)*(log(1+((u+vw)*sqrt(k/g)*acosh(exp(k*h)))));
display(strcat('The distance covered with wind blowing ', num2str(Rxz)));