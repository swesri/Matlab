clc;
T=input('enter the value of T')
a=input('enter no of inputs')
for b=1:a
t=input('enter the signal')
if(t==1)
    [m,n]=size(x)
    t=0:0.01:T;    
    x=rectpuls(t,T);
    [m,n]=size(x);
    k=wgn(m,n,2);
    subplot(2,2,1);
    plot(k);
    title('noise sig');
    s1=x+k;
    subplot(2,2,2);
    plot(s1);
    title('s1 sig');
    y=-x;
    z=x-y;
    subplot(2,2,3);
    plot(z);
    title('diff sig');
else    
    t=0:0.01:T;
    x=rectpuls(t,T);
    y=-x;
    [m,n]=size(x)
    k=wgn(m,n,2);
    subplot(2,2,1);
    plot(k);
    title('noise sig');
    s1=y+k;
    subplot(2,2,2);
    plot(s1);
    title('s1 sig');
    z=x-y;
    subplot(2,2,3);
    plot(z);
    title('diff sig');
end
j=xcorr(s1,z);
subplot(2,2,4);
plot(j);
title('cs1 sig');
c1=max(j)
if(c1<0)
    c1=-c1;
end
c2=min(j)
if(c2<0)
    c2=-c2;
end
if(c1>c2)
    disp('the input is positive signal');
else
    disp('the i/p is neg sig');
end
end


