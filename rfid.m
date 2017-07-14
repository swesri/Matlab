close all;
clear all;
clc;
price=0;
j=1;
ppname={'Product1','Product2','Product3','Product4'}; 
pprice=[200 400 800 1000]; 
id=[24562815 24617893 24562813 24562816];
balance=input('Enter user account balance');
s = serial('COM3','BaudRate',9600);   
fopen(s);
obj1=fscanf(s); 
disp('User TAG NO. is : ');
disp(obj1);
fclose(s);
while(1)
    s1= serial('COM3','BaudRate',9600);   
    fopen(s1);
    obj=fscanf(s1);
    if(obj==obj1)
        break      
    else
         for i=1:4
            if(id(i)==obj)
              price=pprice(i)+price;
              disp(price);
              prod(j)=ppname(i); 
              break
            end
           end
        j=j+1;
    end
     fclose(s1);
end

disp('TOTAL PRICE : ');
display(price);
if(balance>price)
    balance=balance-price;
    display(' Bank balance after purchase');
    disp(balance);
else
    disp('Bank balance low!!!');
    disp(' The balance is : ');
    disp(balance);
end
