clc;
x=1;
while(x)
    
disp('Enter the required no.');
n=input(' 1.Duobinary with precoding 2.duobinary without precoding 3.modified duobinary:-');
disp('The choice is');disp(n);
for i=1:13
    disp([ i 'enter the bit']);
y(i)=input('');
end
switch(n)
    case 1
clc;            %duobinary with precoding 
disp('DUOBINARY WITh PRECODING');
disp(y);
w(1)=0;
   for i=2:13
    w(i)=xor(w(i-1),y(i));
   end
disp(w);
w=((2*w)-1);
disp(w);
   for i=2:13
    t(i)=(w(i)+w(i-1));
   end
disp(t);
for i=1:13
    if ((t(i)==2)||(t(i)==-2))
        j(i)=0;
    else
        j(i)=1;
    end
end
disp(j);

    case 2
        clc;                  %duobinary no precoding
disp('DUOBINARY WITHOUT PRECODING');
disp(y);
w(1)=0;
for i=2:13
    w(i)=xor(w(i-1),y(i));
end
disp(w);
w=((2*w)-1);
disp(w);
for i=2:13
    t(i)=(w(i)+w(i-1));
end
disp(t);
for i=1:13
    if ((t(i)==2)||(t(i)==-2))
        j(i)=0;
    else
        j(i)=1;
    end
end
disp(j);
    case 3
close all;          %modified duobinary
clc;
disp('MODIFIED DUOBINARY');
disp(y);
y=((2*y)-1);
g=y;
disp(g);
for i=3:13
 t(i)=(g(i)-g(i-2)) ;
end
disp(t);
for i=3:12
    a(i)=(t(i)+g(i-2));
end
    disp(a);
    for i=3:12
        if (a(i)==1)
            j(i)=1;
        else
            j(i)=0;
        end

         
    end
 disp(j);
    otherwise
        disp('wrong entry');
end
x=input('Want to try again? if yes-1 else give-0 :-');
end

    
       
    
