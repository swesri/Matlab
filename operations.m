clc;
clear all;
tmin = input('enter tmin');
tmax = input('enter tmax');
x= input('enter the sequence');
sh = input('enter the shift');
m = input('enter the scaling factor');
tscale = tmin:tmax;
k = length(tscale);
%Scaling
for i = 1:k
    h(i) = m*x(i);h
end
%shifting
tshift = tmin+sh:tmax+sh;
for j = 1:k
   g(j) = x(j); 
end;
%reversal
r = fliplr(x);r
subplot(4,1,1);
stem(tscale,x);
subplot(4,1,2);
stem(tscale,h);
subplot(4,1,3);
stem(tshift,g);
subplot(4,1,4);
stem(tscale,r);


