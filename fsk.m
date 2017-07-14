clc;
clf;
T = input('enter T(bit duration)');

t=0:0.001:30;
l=length(t);
f=12000;
fs=14000;
wc = 2*pi*(f/fs);
x=2*sin(wc*t);
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
sq=square(t,50);
stairs(sq);
%axis([0,2,0,1]);
for i=1:l-1
    if(sq(i)==1)
        s(i)  = 2*cos((wc + pi/T)*t(i));
    %elseif(sq(i)== -1)
      %  s(i)=0;
    else
        s(i) = 2*cos((wc - pi/T)*t(i));
    end
end
subplot(3,1,3);
plot(s);


