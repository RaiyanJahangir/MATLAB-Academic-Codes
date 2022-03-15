%Newton's Forward Interpolation
x=[0 1 2 3];
y=[1 0 1 10];
n=length(x);
%Creating forward difference table
for i=1:n-1
    temp=diff(y,i);
    z=length(temp);
    for j=1:z
        y0(i,j)=temp(j);
    end
end

a=1;
for q=1:n-1
    t(1,a)=y0(q,1);%t(1,a)=y0(q,r);
    a=a+1;
end

x0=x(1); %x0=x(n)
h=x(2)-x(1);
x=-1;
k=(x-x0)/h;
yy=y(1);
%yy=y(n-1);
for i=1:n-1
    p=k;
    product=1;
    for j=1:i
    product=product*p;
    p=k-j;
    end
    yy=yy+(product/factorial(i))*t(i);
end

fprintf('Value of y at x=-1 is %d',yy);