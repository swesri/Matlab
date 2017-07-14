
t=0:0.001:10;
ph0=sin((2*pi*0.1*t)-3*pi/4);
ph1=sin((2*pi*0.1*t)-pi/4);	
ph2=sin((2*pi*0.1*t)+3*pi/4);
ph3=sin((2*pi*0.1*t)+pi/4);

op=[];
figure(1)
subplot(411);
plot(t,ph0);
subplot(412);
plot(t,ph1);
subplot(413)
plot(t,ph2);
subplot(414)
plot(t,ph3);

x=input('sequence:');
figure(2);
subplot(211);
stairs(x);

for i=1:2:length(x)
    if(x(i)==1 && x(i+1)==1)
       op=[op ph3]; 
    else
        if(x(i)==0 && x(i+1)==0)
            op=[op ph0];
        else
            if(x(i)==1 && x(i+1)==0)
                op=[op ph2];
            else
                op=[op ph1];
            end
        end
    end
end

subplot(212);
plot(op);
title('QPSK Modulation');
grid on


