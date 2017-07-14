clc;
clf;
%amp=input('enter amplitude');
t=0:0.001:1;
wid=0.5;
x=sin(2*pi*t);% modulating wave
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
    if ((x(i)==s(i))&(s(i)==0))
        for j=1:(wid+i)
        ppm(j)=1;
        j = j + 0.1;
        end
       else
        ppm(i)=0;
    end
end
subplot(3,1,3);
stem(ppm);

