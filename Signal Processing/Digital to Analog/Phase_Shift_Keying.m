clc
clear;
close all;
x=[1 0 1 1 0 1 0 1];%digital data
disp(x);

bp=0.000001; %bit period

bit=[];

for n=1:1:length(x)
    if x(n)==0
        se=zeros(1,100);
    else
        se=ones(1,100);
    end
    bit=[bit se];
end

t1=bp/100:bp/100:length(x)*bp;

subplot(2,1,1);
plot(t1,bit,'LineWidth',2.5);grid on;
axis([0 length(x)*bp -0.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Digital Signal');

%PSK
t4=bp/100:bp/100:bp;

A1=1;

f0=5/bp;
%f1=10/bp;
s=[];

for n=1:1:length(x)
    if x(n)==0
        y=A1*sin(2*pi*f0*t4);
    else
        y=-A1*sin(2*pi*f0*t4);
    end
    s=[s y];
end

subplot(2,1,2);
plot(t1,s,'LineWidth',2.5);grid on;
axis([0 length(x)*bp -1.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Analog Signal');
