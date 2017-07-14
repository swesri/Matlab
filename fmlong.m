kf = 160*pi;
m_int = kf*1.e-4*cumsum(m);
fm = cos(2*fc*pi*t + m_int);

% ================
% FM DE-MODULATION
% ================

dem = diff(fm);
dem = [0,dem];

rect_dem = abs(dem); 

% Filtering out High Frequencies

a = fir1(80,100*1.e-4);
b = 1;
rec = filter(a,b,rect_dem);


fl = length(t);
fl = 2^ceil(log2(fl));
f = (-fl/2:fl/2-1)/(fl*1.e-4);
mF = fftshift(fft(m,fl));                               % Frequency Responce of Message Signal
fmF =  fftshift(fft(fm,fl));                            % Frequency Responce of FM
rect_demF = fftshift(fft(rect_dem,fl));                 % Frequency Responce of Rectified FM
recF = fftshift(fft(rec,fl));                           % Frequency Responce of Recovered Message Signal

% ======================
% PLOTING IN TIME DOMAIN
% ======================

figure(1);

subplot(2,1,1);
plot(t,m);
title('Message Signal');
xlabel('{\it t} (sec)');
ylabel('m(t)');
grid;

subplot(2,1,2);
plot(t,fm);
title('FM');
xlabel('{\it t} (sec)');
ylabel('FM(t)');
grid;

figure(2);

subplot(2,1,1);
plot(t,rect_dem);
title('Rectified FM');
xlabel('{\it t} (sec)');
ylabel('de-modulated(t)')
grid;

subplot(2,1,2);
plot(t,rec);
title('Recovered Signal');
xlabel('{\it t} (sec)');
ylabel('m(t)');
grid;


% =================================
% Ploting Freq Responce of Signals
% =================================

figure(3);

subplot(2,2,1);                                         
plot(f,abs(mF));
title('Freq Responce of Message Signal');
xlabel('f(Hz)');
ylabel('M(f)');
grid;
axis([-600 600 0 200]);


subplot(2,2,2);
plot(f,abs(fmF));
title('Freq Responce of FM');
grid;
xlabel('f(Hz)');
ylabel('C(f)');
axis([-600 600 0 200]);


subplot(2,2,3);
plot(f,abs(rect_demF));
title('Freq Responce of Rectified FM');
xlabel('f(Hz)');
ylabel('Rectified FM(f)');
grid;
axis([-600 600 0 150]);

subplot(2,2,4);
plot(f,abs(recF));
title('Freq Responce of Recoverd Signal');
xlabel('f(Hz)');
ylabel('M(f)');
grid;
axis([-600 600 0 150]);
