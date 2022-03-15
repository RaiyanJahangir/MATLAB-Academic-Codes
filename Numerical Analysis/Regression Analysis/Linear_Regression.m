data = [1, 0.5; 2, 2.5; 3, 2.0; 4, 4.0; 5, 3.5; 6, 6.0; 7, 5.5;];

x = data(:,1);
y = data(:,2);

figure % open a new figure window 
plot(x,y,'o');
ylabel('Y');
xlabel('X');

sumxy = sum(x.*y)
sumx = sum(x)
sumy = sum(y)
sumx2 = sum(x.*x)
n = size(data, 1)

a1 = (n*sumxy - sumx*sumy)/(n*sumx2-sumx*sumx)

a0 = sumy/n - a1*sumx/n 

fprintf('Model is: y = %f + %fx', a0, a1);

hold on; 

y_predict = a0 + a1 * x; 

plot(x,y_predict); 

Sr = sum((y - a0 - a1*x).^2)
St = sum((y-sumy/n).^2)

r2 = (St-Sr)/St 

fprintf("Goodness of fit is %f percent", r2*100);