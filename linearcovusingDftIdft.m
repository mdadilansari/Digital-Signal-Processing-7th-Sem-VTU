clc; % clear screen
clear all; % clear work space
close all; % close all figure windows
xn = input('enter the first sequence x(n) = '); % first sequence
hn = input('enter the second sequence h(n) = '); % second sequence
N = length(xn)+length(hn)-1; % length of output
Xk = fft(xn,N); % N point DFT of first sequence
Hk = fft(hn,N); % N point DFT of second sequence
Yk = Xk.*Hk; % multiplication of DFTs of first and second sequence
yn = ifft(Yk,N); % take inverse DFT
disp('Linear convolution of x(n) and h(n) =');
disp(yn); % display the output
subplot(2,2,1); % graphical display of first sequence
stem(xn);
xlabel('n');
ylabel('x(n)');
title('plot of x(n)');
subplot(2,2,2); % graphical display of second sequence
stem(hn);
xlabel('n');
ylabel('h(n)');
title('plot of h(n)');
subplot(2,2,3); % graphical display of output sequence
stem(yn);
xlabel('n');
ylabel('y(n)');
title('Convolution Output');