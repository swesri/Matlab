clc;
clear all;
width = input('enter the width of pulse');
height = input('enter the height of pulse');
tmin = input('enter the tmin');
tmax = input('enter the tmax - give tmax more than width');
t = tmin:1:tmax;
k = length(t);
for i  = 1:k
    if i > tmin & i <= width
        h(i) = height;i
    else
        h(i) = 0;
    end;
end
subplot(3,1,1);
plot(t,h);
F = ifourier(h,t);
subplot(3,1,2);
plot(t,F);
