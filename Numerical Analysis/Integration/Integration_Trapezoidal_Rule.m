low=0;
high=1;
h=0.1;
n=(high-low)/h;
f=@(x)exp(-x);
cur=low;
for i=1:n+1
    y(i)=f(cur);
    cur=cur+h;
end
display(y);

I=0;

for i=2:n
    I=I+y(i);
end

I=h/2*(y(1)+2*I+y(n+1));
display(I);