n=[0 0 0 0 0 0 1 1 1 0 0 1];
%NRZ unipolar 
i=1;
t=0:0.01:length(n);
for j=1:length(t)
    if t(j)<=i
        y(j)=n(i);
    else
        i=i+1;
        y(j)=n(i);
    end
end
subplot(1,1,1);
plot(t,y,'LineWidth',2.5);
axis([0 length(n) -2 2]);grid on;
xlabel('Time');
ylabel('Amplitude');
title('Unipolar NRZ');

