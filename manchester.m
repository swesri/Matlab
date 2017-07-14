t=0:1:10;
a=input('binary sequence:');
subplot(3,1,1);
stem(a);
j=1;
for i=1:length(a)
    if a(i)==1
        b(j)=1;
        b(j+1)=0;
    else
       b(j)=0;
       b(j+1)=1;
    end
    j=j+2;
end
subplot(3,1,2);
stairs(b);
j=1;
for i=1:length(b)/2
    if b(j)==1&&b(j+1)==0
        x(i)=1;
    else
       x(i)=0;
    end
    j=j+2;
end
subplot(3,1,3);
stem(x);