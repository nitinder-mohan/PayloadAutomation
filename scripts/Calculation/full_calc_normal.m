display('This is a program that implements the path of free falling body from an aircraft'); %we are following the KGS system
display('The body assumed to be spherical in shape');%inputs will be: height, speed, radius, mass
display('Lets do this!!');
u=input('Enter the speed of the aircraft (in m/s):  ');%currently the implementation doesnt convert but it will be added in the future
h=input('Enter the height of the aircraft (in m):  ');%same story
g=9.8;
display('Lets calculate in VERTICAL direction first!!')
t=sqrt((2*h)/g);
display(t,'Time taken to reach the ground vertically will be');
display('First we do it without the air drag!!');
v0=g*t;
display(strcat('Velocity in vertical ', num2str(t)));
display('AND now over to the air drag!!');
display('Calculating without the air drag!');
display('Lets calculate the distance at which the object should be dropped');
x=u*t;
display(strcat('Without air drag, the object should be dropped ', num2str(x),' meters before drop-point'));
%r=input('Enter the radius of the object(in m):')    uncomment this when
%you are sure of the parameters of the payload
%m=input('Enter the mass of the object(in Kg):');
%area=2*pi*r^2; %drag coefficient of sphere is 0.47 and density of air is 1.225 kg/m^2
%k=(area*1.225*0.47)/(2*m);
k=input('Enter the value of k:  ');
v1=sqrt(g/k)*tanh(t*sqrt(g*k));
display(v1,'velocity of object in vertical direction will be'); 
%y=(1/k)*log(cosh(sqrt(g*k)*t));
%display(y,'displacement of the object(in vertical direction)');
display('now on to the HORIZONTAL movement!!');
display('Now onto motion with air drag intact!')
v2=u/(1+u*k*t);
display(v2,'velocity of object in horizontal motion is')
x1=(1/k)*(log(1+(u*sqrt(k/g)*acosh(exp(k*h)))));
temp1=sprintf('With air drag, the object should be dropped %d meters before drop-point',x1);
display(temp1,'');
v3=sqrt(v1^2+v2^2);
display(v3,'velocity of the object when it reaches the ground will be')