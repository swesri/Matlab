clc;
clf;
t=0:0.01:10
x=sin(t);% modulating wave
figure(1);
subplot(2,1,1);
plot(t,x);
axis([0,5,-1,1]);
xlabel('time');
ylabel('amp');
title('modulating signal');
grid on;
for(i=1:length(t))
    if mod(i,5)==1
    y(i)=1;       
    Z(i)=x(i)*y(i);
    else
    y(i)=0;
    Z(i)=0;
    end
    end
disp(y);
subplot(2,1,2);
stem(t,y);
axis([0,5,-1,1]);
xlabel('time');
ylabel('amp');
title('impulse function');
grid on;
figure(2);
subplot(2,1,1);
stem(t,Z);
axis([0,5,-1,1]);
xlabel('time');
ylabel('amp');
title('sampled output');
grid on;
subplot(2,1,2);
stairs(t,Z);
axis([0,5,-1,1]);
xlabel('time');
ylabel('amp');
title('PAM output');
grid on;
figure(3);
subplot(2,1,1);
stairs(t,Z);
axis([0,3,-1,1]);
xlabel('time');
ylabel('amp');
grid on;
subplot(2,1,2);
stairs(t,Z);
axis([3,5,-1,1])
xlabel('time');
ylabel('amp');
grid on;