clc;
clf;
%amp=input('enter amplitude');
t=0:0.001:1
x=0.5*sin(2*pi*t);% modulating wave
subplot(3,1,1);
plot(t,x);
axis([0,1,-1,1]);
xlabel('time');
ylabel('amp');
grid on;
title('modulating signal');
s=sawtooth(2*pi*t*10);
subplot(3,1,2);
plot(t,s);
axis([0,1,-2,2]);
xlabel('time');
ylabel('amp');
grid on;
title('sawtooth wave');
l=length(s);
for i=1:l
    if (x(i)<=s(i))
        pwm(i)=1;
    elseif (x(i)>=s(i))
        pwm(i)=0;
    end
end
subplot(3,1,3);
stairs(t,pwm);
axis([0,1,-2,2]);
xlabel('time');
ylabel('amp');
title('pwm wave');
grid on;
figure(2);
plot(t,x,t,pwm);
axis([0,1,-2,2]);
xlabel('time');
ylabel('amp');
title('pwm wave');
grid on;

