%Gauss-Jordan
a=[2 1 4 12
    8 -3 2 20
    4 11 -1 33]
[r,c]=size(a);
for j = 1:r
for i = 1:r
if(i~=j)
m=a(i,j)/a(j,j);
for k = 1:c
a(i,k)=a(i,k)-m*a(j,k);
end
end
end
end
for i = 1:r
    a(i,:)=a(i,:)/a(i,i);
    x(i)=a(i,c);
end
