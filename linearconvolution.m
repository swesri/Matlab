% PROGRAM FOR LINEAR CONVOLUTION
clc;
close all;
clear all;
x=input('Enter the input seq x:');
h=input('Enter the system impulse resp h:');
n=length(x);
m=length(h);
for i=1:n+m-1,
   y(i)=0;
   sum=0;
   for j=1:i
      if((i-j+1)<=m & j<=n)
         sum=sum+x(j)*h(i-j+1);
      end
   end
   y(i)=sum;
end
disp(y);
subplot(3,1,1);
stem(x);
title('Input Sequence');
subplot(3,1,2);
stem(h);
title('Impulse Sequence');
subplot(3,1,3);
stem(y);
title('Output Sequence');
y1=convn(x,h);
disp(y1);
