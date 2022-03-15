%Polynomial Regression
data=[1, 51;2 ,54;3, 56;4 ,61;5 ,70;6 ,88;7 ,123;8 ,164;9 ,218;10 ,330;11, 424;12 ,482;13, 621;14 ,803;15 ,1012;
16 ,1231;17 ,1572;18 ,1838;19 ,2144;20 ,2456;21 ,2948;22, 3382;23, 3772;24, 4186;25 ,4689;26 ,4998;27 ,5416;
28 ,5913;29 ,6462;30 ,7103;31, 7667;32, 8238;33 ,8790;34 ,9455;35 ,10143;36 ,10929;37, 11719;38, 12425;39, 13134;
40 ,13770;41 ,14657;42, 15691;43 ,16660;44, 17822;45 ,18863;46 ,20065;47 ,20995;48 ,22268;49,23870;50, 25121;
51 ,26738;52 ,28511;53, 30205;54 ,32078;55 ,33610;56 ,35585;57 ,36751;58 ,38292;59, 40321;60, 42844;61, 44608;];

figure
x=data(:,1);
global y;
y=data(:,2);
plot(x,y,'O');
ylabel('Total Cases');
xlabel('Days');

sumx=sum(x);
sumx2=sum(x.*x);
sumy=sum(y);
sumx3=sum((x.*x).*x);
sumxy=sum(x.*y);
sumx4=sum(((x.*x).*x).*x);
sumx2y=sum((x.*x).*y);
n=size(data,1);

%Naive Gauss Elimination
a=[n,sumx,sumx2,sumy;sumx,sumx2,sumx3,sumxy;sumx2,sumx3,sumx4,sumx2y];
if(a(1,1)<a(2,1))
    temp=a(1,:);
    a(1,:)=a(2,:);
    a(2,:)=temp;
end
if(a(1,1)<a(3,1))
    temp=a(1,:);
    a(1,:)=a(3,:);
    a(3,:)=temp;
end
c=a(1,1)/a(2,1);
a(2,:)=a(1,:)-a(2,:)*c;
c=a(1,1)/a(3,1);
a(3,:)=a(1,:)-a(3,:)*c;
if(a(2,2)<a(3,2))
    temp=a(2,:);
    a(2,:)=a(3,:);
    a(3,:)=temp;
end
c=a(2,2)/a(3,2);
a(3,:)=a(2,:)-a(3,:)*c;


z=zeros(3,1);
z(3)=a(3,4)/a(3,3);
z(2)=(a(2,4)-a(2,3)*z(3))/a(2,2);
z(1)=(a(1,4)-a(1,3)*z(3)-a(1,2)*z(2))/a(1,1);

a0=z(1);
a1=z(2);
a2=z(3);

%fprintf('Model is: y = %f + %fx +%fx^2',a0,a1,a2);

hold on; 

global y_predict;
y_predict = a0+a1*x+a2*(x.^2);

plot(x,y_predict);

sr=sum((y-a0-a1*x-a2*(x.*x)).^2);
st=sum((y-sumy/n).^2);

r2=(st-sr)/st;

fprintf('\nGoodness of fit is %f percent\n',r2*100);
query=input('Enter the date :');
fprintf('The actual number of cases:%d\n',find_actual(query));
fprintf('The predicted number of cases:%f\n',find_predict(query));

function[ans]= find_actual(z)
global y;
ans=y(z);
end
function [ans]=find_predict(w)
global y_predict;
ans=y_predict(w);
end
