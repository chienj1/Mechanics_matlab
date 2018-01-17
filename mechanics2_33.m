x=zeros(10,1);
v=zeros(10,1);
a=zeros(10,1);
c=0.5;
m=4/3*pi*0.3^3/1000;
r=0.003;
g=9.8;
dt=0.001;
for count=2:10000
    u=v(count-1);
    a(count)=0.5*c*1.3*pi*r*r*u^2/2/m-g;
    v(count)=v(count-1)+a(count)*dt;
    x(count)=x(count-1)+v(count)*dt;
    if x(count)<-100;
        break;
    end
end
plot(a,'b-');
grid on;

