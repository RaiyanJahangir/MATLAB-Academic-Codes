n=[0 0 0 0 0 0 1 1 1 0 0 1];

%MLT-3
i=1;
a=0;
b=1;
t=0:0.01:length(n);
for j=1:length(t)
    if(t(j)>i)
        i=i+1;
        if(n(i)==0)
            y(j)=a;
        else
            if(a==1 || a==-1)
                a=0;
                y(j)=a;
            else
                if(b==1)
                    a=1;
                    y(j)=a;
                    b=-1;
                else
                    a=-1;
                    y(j)=a;
                    b=1;
                end
            end
        end 
        continue;
    end
    y(j)=a;   
end

subplot(1,1,1);
plot(t,y,'LineWidth',2.5);
axis([0 length(n) -2 2]);grid on;
xlabel('Time');
ylabel('Amplitude');
title('MLT-3');
