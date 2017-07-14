a=input('enter input binary sequence:');
for i=1:length(a)
    if a(i)==1
        a1(i)=1;
    else
        a1(i)=-1;
    end
end
b=input('enter binary pn sequence:');
for i=1:length(b)
    if b(i)==1
        b1(i)=1;
    else
        b1(i)=-1;
    end
end
x0=a1.*b1;
for i=1:length(x0)
    if x0(i)==1
        x(i)=1;
    else
        x(i)=2;
    end
end
y=pskmod(x,4);
z=awgn(y,4);
y1=pskdemod(z,4);
for i=1:length(y1)
    if y1(i)==1
        y2(i)=1;
    else
        y2(i)=-1;
    end
end
x1=y2.*b1;
for i=1:length(x1)
    if x1(i)==1
        x2(i)=1;
    else
        x2(i)=0;
    end
end
disp('input bit a=');disp(a);
disp('input bin a1=');disp(a1);
disp('pn bit b=');disp(b);
disp('pn bin b1=');disp(b1);
disp('mux bin x0=');disp(x0);
disp('mux bit x=');disp(x);
disp('modulator y=');disp(y);
disp('channel z=');disp(z);
disp('demoulator y1=');disp(y1);
disp('demo bin y2=');disp(y2);
disp('output bin x1=');disp(x1);
disp('output bit x2=');disp(x2);










