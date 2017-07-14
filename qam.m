
t=0:0.001:10;
ph0=(0.765/2)*sin((2*pi*0.1*t)-3*pi/4);
ph1=(1.848/2)*sin((2*pi*0.1*t)-3*pi/4);	
ph2=(0.765/2)*sin((2*pi*0.1*t)-pi/4);
ph3=(1.848/2)*sin((2*pi*0.1*t)-pi/4);
ph4=(0.765/2)*sin((2*pi*0.1*t)+3*pi/4);
ph5=(1.848/2)*sin((2*pi*0.1*t)+3*pi/4);	
ph6=(0.765/2)*sin((2*pi*0.1*t)+pi/4);
ph7=(1.848/2)*sin((2*pi*0.1*t)+pi/4);

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
l=length(x);
figure(2);
subplot(211);
stairs(x);

for i=1:3:length(x);
    if(x(i)==1 && x(i+1)==1 && x(i+2)==1)
       op=[op ph7]; 
    else
        if(x(i)==1 && x(i+1)==1 && x(i+2)==0)
            op=[op ph6];
            else
        if(x(i)==1 && x(i+1)==0 && x(i+2)==1)
            op=[op ph5];
             else
        if(x(i)==1 && x(i+1)==0 && x(i+2)==0)
            op=[op ph4];
             else
        if(x(i)==0 && x(i+1)==1 && x(i+2)==1)
            op=[op ph3];
             else
        if(x(i)==0 && x(i+1)==1 && x(i+2)==0)
            op=[op ph2];
             else
        if(x(i)==0 && x(i+1)==0 && x(i+2)==1)
            op=[op ph1];
        else
            op=[op ph0];
        end
        end
        end
        end
        end
        end
    end
end

tb=0:0.001:5
subplot(212);
plot(op);
title('QAM Modulation');
grid on
