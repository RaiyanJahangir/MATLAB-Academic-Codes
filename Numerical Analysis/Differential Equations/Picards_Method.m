%Picard's method
syms x y;
dydx=y;
x0=0;
y0=1;

f=subs(dydx,y,y0);
y1=y0+int(f,x,x0,x);
disp(y1);

f=subs(dydx,y,y1);
y2=y0+int(f,x,x0,x);
disp(y2);

f=subs(dydx,y,y2);
y3=y0+int(f,x,x0,x);
disp(y3);

f=subs(dydx,y,y3);
y4=y0+int(f,x,x0,x);
disp(y4);

ysc1=exp(x);

ezplot(y1,1,5);
hold on;
ezplot(y2,1,5);
ezplot(y3,1,5);
ezplot(y4,1,5);
hold off;

title('dy/dx=y,y(0)=1,Picards Method');
text(1.2,120,'solution y=e^x');
text(1.2,100,'y_1,y_2,y_3,y_4->solution');
text(4.5,100,'y');
text(4.5,55,'y_4');
text(4.5,38,'y_3');
text(4.5,20,'y_2');
text(4.5,5,'y_1');