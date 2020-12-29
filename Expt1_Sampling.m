clc;
close all;
%creating original signal
f1=1000;
f2=850;
f3=620;
all_f=[f1 f2 f3];
fmax=max(all_f);
T=1/min(all_f);
t=0:0.01*T:2*T;
x=sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t);
plot(t,x);
grid on;
xlabel('t');
ylabel('x(t)');
title('Original signal');

fs=3*fmax;
n=0:1/fs:2*T;
x1=sin(2*pi*f1*n)+sin(2*pi*f2*n)+sin(2*pi*f3*n);
figure;
plot(t,x,'b');
hold on;
stem(n,x1,'r');
xlabel('samples');
ylabel('x(n)');
title('Reconstructed signal');

fs2=2*fmax;
n2=0:1/fs2:2*T;
x2=sin(2*pi*f1*n2)+sin(2*pi*f2*n2)+sin(2*pi*f3*n2);
figure;
plot(t,x,'b');
hold on;
plot(n2,x2,'r');
xlabel('samples');
ylabel('x(n)');
title('Nyquist');

fs3=1.5*fmax;
n3=0:1/fs3:2*T;
x3=sin(2*pi*f1*n3)+sin(2*pi*f2*n3)+sin(2*pi*f3*n3);
figure;
plot(t,x,'b');
hold on;
plot(n3,x3,'r');
xlabel('samples');
ylabel('x(n)');
title('Undersampled');