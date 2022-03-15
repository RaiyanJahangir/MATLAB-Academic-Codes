clc;
clear all;
close all; %closes other gui windows

Am=5;
fm=2000; %hz
tm=1/fm;
t=0:tm/1000:6*tm;
ym=Am*cos(2*pi*fm*t);
figure(1);
subplot(3,1,1); %3 plots in a graph
plot(t,ym),grid on;
title ("Modulating Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volt)");

m=1; %let m=1
ac=Am/m;
fc=fm*10;
yc=ac*cos(2*pi*fc*t);

%figure(1);
subplot(3,1,2); %3 plots in a graph
plot(t,yc),grid on;
title ("Carrier Signal");
xlabel("Time (sec)");
ylabel("Amplitude (volt)");


y=ac*cos(2*pi*fc*t+Am*cos(2*pi*fm*t));
subplot(3,1,3); %3 plots in a graph
plot(t,y),grid on;
title ("Modulated Signal(phase)");
xlabel("Time (sec)");
ylabel("Amplitude (volt)");


