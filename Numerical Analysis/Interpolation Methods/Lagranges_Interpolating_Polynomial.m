%Lagrange's Interpolating Polynomial
x=[300,304,305,307];
y=[2.4771,2.4829,2.4843,2.4871];
n=length(x);
xx=301;
yy=0;
for i=1:n
    p=1;
    product1=1;
    product2=1;
    for j=1:n
        if(j~=i)
            product1=product1*(xx-x(j));
        end
    end
    for j=1:n
        if(j~=i)
            product2=product2*(x(i)-x(j));
        end
    end
    yy=yy+((product1/product2)*y(i));
end

fprintf('Value of y at x=301 is %.4f',yy);