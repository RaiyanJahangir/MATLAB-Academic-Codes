clc;

clear all;

% Input Generator Matrix

g=input('Enter The Generator Matrix :')

disp ('G = ')

disp ('The Order of Linear block Code is:')

[n,k] = size(transpose(g))

for i = 1:2^k

for j = k:-1:1

if rem(i-1,2^(-j+k+1))>=2^(-j+k)

u(i,j)=1;

else

u(i,j)=0;

end

end

end

u;

disp('The Possible Codewords are :')

c = rem(u*g,2)

disp('The Minimum Hamming Distance dmin for Block Code is= ')

d_min = min(sum((c(2:2^k,:))'))

% Code Word

r = input('Enter the Received Code Word:')

p = [g(:,n-k+2:n)];

h = [transpose(p),eye(n-k)];

disp('Hammimg Code')

ht = transpose(h)

disp('Syndrome of a Given Codeword is :')

s = rem(r*ht,2)

for i = 1:1:size(ht)

if(ht(i,1:3)==s)

r(i) = 1-r(i);

break;

end

end

disp('The Error is in bit:')

i

disp('The Corrected Codeword is :')

r