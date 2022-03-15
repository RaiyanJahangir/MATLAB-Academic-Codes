clc;
close all;
clear all;
x = input('enter data word');
y = input('enter pattern word');
p = length(y);
k = length(x);
n = p+k-1;
dw = x;
for z=1:(n-k)
dw(k+z) = 0;
end
for z=1:p
td(z)= dw(z);
tr2(z)=0;
tr3(z)=1;
end
tr = xor(td,y);
while(1)
z=z+1;
if(z>n)
break;
end

tr(p+1)=dw(z);
for l=2:(p+1)
tr1(l-1)=tr(l);
end

tr = tr1;
if(tr(1)==0)
tr=xor(tr,tr2);
else
tr=xor(tr,y);
end
end
cd=x;
for z=2:p
cd(k+z-1)=tr(z);
end
disp(cd);