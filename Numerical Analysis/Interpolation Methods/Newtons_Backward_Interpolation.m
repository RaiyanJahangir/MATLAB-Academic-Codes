%Newton's Backward Interpolation
x=[0,1,2,3];
y=[1,0,1,10];
n=length(x);
%Creating Backward Difference Table
for i=1:n-1
    temp=diff(y,i);
    z=length(temp);
    for j=1:z
        y0(i,j)=temp(j);
    end
end

a=1;
r=n-1;
for q=1:n-1
    t(1,a)=y0(q,r);
    a=a+1;
    r=r-1;
end

x0=x(n);
h=x(2)-x(1);
x=4;
k=(x-x0)/h;
yy=y(n);
for i=1:n-1
    p=k;
    product=1;
    for j=1:i
    product=product*p;
    p=k+j;
    end
    yy=yy+(product/factorial(i))*t(i);
end

fprintf('Value of y at x=4 is %d',yy);