A=[2 1 2;
  3 5 1;
  1 1 3];
B=[4 7 3];  


[m,n]=size(A);

es=0.5*10^(-3);
ea=Inf;
x=[0;0;0];

itr=0;


p=0;
sum=0;
for i=1:n
    sum=0;
    for j=1:n
        if (i~=j)
            sum=sum+abs(A(i,j));
        end
        if (sum>=A(i,i))
            p=1;
        end
    end
end

if (p==0)
    fprintf("DIAGONALLY DOMINANT");
else
    fprintf("NOT");
    
end


while (ea>es)
    itr=itr+1;
     x_old=x;
    for i=1:n
        sum=0;
        for j=1:n
            if (j~=i)
                sum=sum+A(i,j)*x(j);
            end
            
        end
        x(i)=(1/A(i,i))*(B(i)-sum);
       
    end
    	 ea=abs((x-x_old)./x)*100;
     
end
disp(x);
disp(itr);
disp(p);
display(A);