%set wc=1  
syms('t')
t=0:0.1:20
%A=10  Ey/B=6
x=-10*cos(t)+6*t
y=10*sin(t)

%A=10  Ey/B=15
%x=-10*cos(t)+15*t
%y=10*sin(t)

%A=10  Ey/B=10
%x=-10*cos(t)+10*t
%y=10*sin(t)


plot(x,y,'b-')
grid on
