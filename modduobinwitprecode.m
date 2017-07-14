a0=input('enter the sequence:');
disp('input binary sequence');
disp(a0);
for i=1:length(a0)
    if a0(i)==0
        a(i)=(-1);
    else
        a(i)=1;
    end
end
disp('input bipolar sequence');
disp(a);
y1=input('assumption bipolar bit1:');
y2=input('assumption bipolar bit2:');
b(1)=y1;
b(2)=y2;
for i=1:(length(a)-2)
    b(i+2)=a(i);
end
disp('SHIFTED SEQUENCE sequence');
disp(b);
for i=1:length(b)
    x(i)=a(i)-b(i);
end
disp('encoded bipolar sequence');
disp(x);
for i=1:length(x)
    r(i)=x(i)+b(i);
end
disp('decoded bipolar sequence');
disp(x);
for i=1:length(r)
    if r(i)==-1
        d(i)=0;
    else
        d(i)=1;
    end
end
disp('decoded binary sequence');
disp(d);