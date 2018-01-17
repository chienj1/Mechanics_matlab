syms('t')
x(t)=4*t*exp(-0.5*t)+16*exp(-0.5*t)+4*t-16

%x(t)=-2*t*exp(-0.5*t)-4*exp(-0.5*t)+4

%x(t)=t*exp(-0.5*t)

fplot(x,0:10:500)
grid on