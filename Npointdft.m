clear all; % clear work space
N = input('enter the N point = '); % define the number of points to be taken for DFT
xn = input('enter the input sequence x(n) = '); % input sequence
Xk = fft(xn,N); % find the N point DFT
disp('N point DFT of x(n) is = ' );
disp(Xk); % display the DFT of the input sequence
figure(1);
n = 0:1:length(xn)-1; % define x axis for input
stem(n,xn); % plot the input
xlabel('n');
ylabel('x(n)');
title('original signal');
figure(2);
k = 0:N-1; % define the x axis for output sequence
stem(k,abs(Xk)); % plot the absolute value of output
xlabel('k');
ylabel('|X(k)|');
title('Magnitude spectrum');
figure(3);
stem(k,angle(Xk)); % stem(k. (angle(Xk)*180/pi)), plot the phase of DFT
xlabel('k');
ylabel('<X(k)');
title('Phase spectrum');