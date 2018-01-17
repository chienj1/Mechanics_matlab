
clear all;clc;close all;
vx=zeros(100,1);
vx(vx==0)=nan;
vy=vx;	
vx(1)=160/3.6;
vy(1)=0;    

sx=zeros(100,1);
sy=sx;              % sx is x coordinate 
sy(1)=80;
sx(1)=0;  
dt=0.0001;
a=-3.467E-3;

for count = 2:100000
    X=vx(count-1);Y=vy(count-1);  % initial velocity
    ax=a*sqrt(X^2+Y^2)*X;         % first differential equation
    ay=-9.8+a*sqrt(X^2+Y^2)*Y;    % second equation
    vx(count)=vx(count-1)+ax*dt;  
    vy(count)=vy(count-1)+ay*dt;  
    sx(count) = sum(vx(1:count))*dt+sx(1);  
    sy(count) = sum(vy(1:count))*dt+sy(1);  
    if(sy(count)<0)               
        break;
    end
end
plot(sx,sy,'b-');grid on;         % trajectry with aerodynamic drag 
hold on
fplot(@(x)80-4.9*(x*3.6/160)^2,[0 180 0 80],'r-');  % trajectry without aerodynamic drag
