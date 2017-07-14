clc;
T=input('Enter the time period:');
t=0:0.01:T;
x1=tripuls(t,2*T);
subplot(3,1,1);
plot(x1);
[m,n]=size(x1);
y1=wgn(m,n,5);
x2=-tripuls(t,2*T);
subplot(3,1,2);
plot(x2);
[m,n]=size(x2);
y2=wgn(m,n,5);
z=x1+y1+x2+y2;
subplot(3,1,3);
plot(z);
for t=0.01:T
    h1=fliplr(x1);
    h2=fliplr(x2);
end
h=h1-h2;
figure(2);
subplot(2,1,1);
plot(h);
op=conv(z,h);
subplot(2,1,2);
plot(op);