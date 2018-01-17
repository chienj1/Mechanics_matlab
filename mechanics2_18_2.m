clear all;clc;close all;
heightat60=0
sx=zeros(10,1)
sy=sx
vx=zeros(10,1)
vy=vx
dt=0.01
for theta = 60:80        
    vx(1)=35.2*cos(theta/100)   
    vy(1)=35.2*sin(theta/100)
   for count =2:5000
      x=vx(count-1)
      y=vy(count-1)
      ax=-0.01276*x*(x^2+y^2)^0.5
      ay=-0.01276*y*(x^2+y^2)^0.5-9.8
      vx(count)=vx(count-1)+ax*dt
      vy(count)=vy(count-1)+ay*dt
      sx(count)= sum(vx(1:count))*dt+sx(1)
      sy(count)= sum(vy(1:count))*dt+sy(1)
      if sx(count)>60 || sy(count)<0
          heightat60=sy(count)
          break;
      end
   end
   if heightat60>2
      break;
   end
end
plot(sx,sy,'r-')
grid on
