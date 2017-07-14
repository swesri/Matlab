close all;
clear all;
em = input('enter signal voltage in volts:');
ec = input('enter carrier voltage in volts:');
fm = input('enter signal frequency in khz:');
fc = input('enter carrier frequency in khz:');
ma = em/ec;
disp(ma);
if (ma>1)
    disp('over modulation!!');
else if (ma==1)
        disp('critical modulation');
    else
        disp('under modulation');
    end
end
w0=(2*pi*fm);
w1=(2*pi*fc);
wu=w0+w1;
wl=w1-w0;
t = 0:0.001:2;
E=em*cos(w0*t);
C=ec*cos(w1*t);
U=(ma*ec*cos(wu*t))/2;
L=(ma*ec*cos(wl*t))/2;
AM=C+L+U;
subplot(3,1,1);
plot(t,E);
grid on;
subplot(3,1,2);
plot(t,C);
grid on;
subplot(3,1,3);
plot(t,AM);
grid on;
gtext('message signal');
gtext('carrier signal');
gtext('am signal');

