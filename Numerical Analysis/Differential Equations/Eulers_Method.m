f=@(x,y)x-y;
x0=0;
y0=1;
h=0.2;
Xout=[];
y=y0;
Yout=y;
xfinal=0.8;
for x=x0:h:xfinal-h
    Xout=[Xout;x];
    s=f(x,y);
    y=y+h*s;
    Yout=[Yout;y];
end
Xout=[Xout;xfinal];
display(Xout);
display(Yout);
plot(Xout,Yout);