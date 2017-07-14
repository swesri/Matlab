clear all;
close all;
n=input('Enter the number the signal you multiplexed : ');
r=input('Enter the number of bits in each signal : ');
 
%signaling
for i=1:n
    a=input('enter data bits : ');
  for j=1:r
    a1(i,j)=a(1,j);
    j=j+1;
  end
  disp('Enter next signal data bits : ');
  i=i+1;
end
 
%displaying the signal
figure
for i=1:n
 for j=1:r
   a2(1,j)=a1(i,j)
   
   j=j+1;
 end
 subplot(n,1,i);
 stem(a2);title('Input Signal');
 i=i+1;
end
 
 
%multiplexed signal
figure
k=1;
for i=1:n
  for j=1:r
    m(1,k)=a1(i,j);
    j=j+1;
    k=k+1;
  end
  i=i+1;
end
stem(m);title('Multiplexed Signal');
 
 
%demultiplexed signal
figure
k=1;
for i=1:n
 for j=1:r
   t(1,j)=m(1,k)
   d(i,j)=t(1,j);
   j=j+1;
   k=k+1;
 end
 subplot(n,1,i);
 stem(t);title('Received Signal');
end
