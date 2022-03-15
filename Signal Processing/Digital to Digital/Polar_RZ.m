n=[0 0 0 0 0 0 1 1 1 0 0 1];

%Polar-RZ
for k=1:length(n)
    if n(k)==0
        nn(k)=-1;
    else
        nn(k)=1;
    end
end

%RZ Pulse Shaping
i=1;
a=0;
b=0.5;
t=0:0.01:length(n);
for j=1:length(t)
    if (t(j)>=a && t(j)<=b)
        y(j)=nn(i);
    elseif(t(j)>b && t(j)<i)
        y(j)=0;
    else
        i=i+1;
        a=a+1;
        b=b+1;
    end
end

subplot(1,1,1);
plot(t,y,'LineWidth',2.5);
axis([0 length(n) -2 2]);grid on;
xlabel('Time');
ylabel('Amplitude');
title('Polar RZ');
