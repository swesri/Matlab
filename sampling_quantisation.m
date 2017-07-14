% demonstration of sampling and quantization
clc;
clear all;

f = input('enter input frequency');
fs = input('enter sampling frequency');
n =input('enter the no.of cycles');
a = input('enter the amplitude');
t = 0:(1/30000):(n/f);
ts = 0:2/3000:(n/f);
s = (a/2)*sin(2*3.14*f*t);

s1 = (a/2)*sin(2*3.14*f*ts);

stem(ts,s1);

pause;
subplot(4,1,1);
stem(t,s);

s1 = (a/2)*sin(2*3.14*f*ts);

l = length(ts);l
for i = 1:l
  im(i) = 1;
  z(i) = s1(i)*im(i);
    
      q(i) = round(z(i)*10^2)/10^2;
      
end ;    

subplot(4,1,2);
stem(ts,im);
subplot(4,1,3);
stem(ts,z);
subplot(4,1,4);
plot(ts,q);
