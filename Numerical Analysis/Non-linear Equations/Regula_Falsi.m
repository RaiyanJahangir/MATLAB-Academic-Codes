%f=@(x)x^3-4*x+1;
%f=@(x)3*x+sin(x)-exp(x);
f=@(x)x*log10(x)-1.2;
x0=input('Enter first initial point:');
x1=input('Enter second initial point:');
es=0.5*10^(-5);
if(f(x0)*f(x1)>0)
    fprintf('Not a valid interval');
else
   % while true
   for i=1:50
       % i=1;
        c(i)=x0-(f(x0)/(f(x1)-f(x0)))*(x1-x0);
        if(f(x0)*f(c(i))>0)
            x0=c(i);
        else
            x1=c(i);
        end
        if(i>1)
            e(i-1)=(abs(c(i)-c(i-1))/c(i))*100;
            if(e(i-1)<es)
                break;
            end
        end
      %  i=i+1;
    end
end

plot(e);
title('error');
xlabel('iteration');
ylabel('error');