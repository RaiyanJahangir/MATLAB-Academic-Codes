clc;
clear all;
close all;

N = input('');
a=int8(rand(N)*10);
a=mod(a,10);
disp(a);
while(1)
    op=input('','s');
    %disp(op)
    if(strcmp(op,'transpose'))
        a=a';
        disp(a);
    elseif(strcmp(op,'inc'))
        a=a+1;
        a=mod(a,10);
        disp(a);
    elseif(strcmp(op,'dec'))
        a=a-1;
        a=mod(a,10);
        disp(a);
    elseif(strcmp(op,'row'))
        b=input('');
        c=input('');
        a([b c],:)=a([c b],:);
        disp(a);
    elseif(strcmp(op,'col'))
        b=input('');
        c=input('');
        a(:,[b c])=a(:,[c b]);
        disp(a);
    end
    
end

