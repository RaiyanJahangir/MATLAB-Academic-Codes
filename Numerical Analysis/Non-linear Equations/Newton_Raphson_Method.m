f=@(x)x^2-5*x+4;
f1=@(x)2*x-5;
x0=5;
es=0.5*10^(-3);
for i=1:10
    c(i)=x0-(f(x0)/f1(x0));
    x0=c(i);
    if(i>1)
    e(i-1)=(abs(c(i)-c(i-1))/c(i))*100;
    if(e(i-1)<es)
        break;
    end
    end
end
plot(e)