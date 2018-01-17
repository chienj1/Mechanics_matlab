clc;
clear;
w=6;
d=atan(0.4*w/(1-w^2));
for t=0:0.1:20
   u=fix(10*t+1);
    y(u)=-1*exp(-0.2*t)*cos(1*t);
    z(u)=20*cos(w*t-d)/((1-w^2)^2+0.16*w^2)^0.5;
    s(u)=z(u)+y(u);
end
plot(y,'r-');
hold on;
plot(z,'b-');
plot(s,'black');