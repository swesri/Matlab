%BPSK
clc;
clf;
t=0:0.01:30;
x = input('enter the binary sequence');
A=input('enter the input amplitude');
f=input('enter the frequency');
fs=input('enter the sampling frequency');
P=(A*A)/2;
l=length(x);
for i=1:l
    if(x(i)==1)
        bip(i)=1;
    else
        bip(i)=-1;
    end
end
subplot(4,2,1);
stem(x);
subplot(4,2,2);
stem(bip);
sq = sqrt(2*P);
y1=sq*cos(2*pi*t);
y2= -y1;
subplot(4,2,3);
plot(t,y1);
subplot(4,2,4);
plot(t,y2);
for i=1:t
    if(bip(i)==1)
        bpsk(i)= y1(i);
    else
        bpsk(i)= y2(i);
    end
end
subplot(4,2,5);
stairs(bpsk);


