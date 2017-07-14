clc;
clear all;
f = input('enter input frequency');
fs = input('enter sampling frequency');
n =input('enter the no.of cycles');
a = input('enter the amplitude');
t = 0:0.00001:(n/f);
s = (a/2)*sin(2*3.14*f*t);
subplot(3,1,1);
plot(t,s);
k =length(t);
for i =1:t
    if t == (i/fs)
        im(i) = i/fs;
    else
        im(i) = 0;
    end;
end;
subplot(3,1,2);
stem(t,im);
        