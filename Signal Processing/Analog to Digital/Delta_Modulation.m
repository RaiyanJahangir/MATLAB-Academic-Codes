% ID-201914039 Raiyan Jahangir Sec B
clc; 
clear all; 
close all; 

Am=input('Enter the Amplitude of the Signal:');
Fm=input('Enter the Frequency of the Signal:');
Fs=15*Fm; %Oversampling
t=0:1/Fs:1;%time
x=Am*sin(2*pi*Fm*t); %input sinusoidal signal
l=length(x);

%plot of input signal
figure(1);
subplot(3,1,1);
plot(t,x);
title('MESSAGE SIGNAL');
xlabel('TIME');
ylabel('AMPLITUDE');
grid on;

%Modulation
delta =(2* pi *Am*Fm) /Fs; %step size
%delta=0.2;
xn=0; %delta_modulation 
for i=1:l 
    if (x(i)>xn(i)) 
        d(i)=1; 
        xn(i+1)=xn(i)+delta; 
    else
        d(i)=0;
        xn(i+1)=xn(i)-delta; 
    end
end

%Modulated Signal Figure
subplot(3,1,2);
stairs(xn);
%plot(xn);
title('MODULATED SIGNAL');
xlabel('TIME');
ylabel('AMPLITUDE');
grid on;
%hold on;

%Demodulation
for i=1:l 
    if(d(i)>xn(i))
    if(d(i)==1)
        fprintf('Hello\n');
        d(i)=0; 
        xn(i+1)=xn(i)+delta; 
    else
       fprintf('Hello\n');
        d(i)=1; 
        xn(i+1)=xn(i)-delta; 
    end
end

%Demodulated Signal Figure
subplot(3,1,3);
plot(xn);
%stairs(xn);
title('RECOVERED SIGNAL');
xlabel('TIME');
ylabel('AMPLITUDE');
grid on;