n=[0 0 0 0 0 0 1 1 1 0 0 1];

%Manchester
nnn=[];
for m=1:length(n)
    if(n(m)==0)
        nn=[1 -1];
    else
        nn=[-1 1];
    end
    nnn=[nnn nn];
end

i=1;
l=0.5;
t=0:0.01:length(n);
for j=1:length(t)
    if t(j)<=l
        y(j)=nnn(i);
    else
        y(j)=nnn(i);
        i=i+1;
        l=l+0.5;
    end
end

subplot(1,1,1);
plot(t,y,'LineWidth',2.5);
axis([0 length(n) -2 2]);grid on;
xlabel('Time');
ylabel('Amplitude');
title('Manchester');


