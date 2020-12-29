clc;
clear all;
close all;
x=input('Enter the First Signal: ');
h=input('Enter the Second Signal: ');
L=length(x);
M=length(h);
max_len=max(L,M);
Diff_len=L-M;
if(Diff_len>=0)
    h=[h,zeros(1,Diff_len)];
else
    x=[x,zeros(1,abs(Diff_len))];
end;
        
for n=1:max_len
    y(n)=0;
    for i=1:max_len
        j=n-i+1;
        if(j<=0)
            j=max_len+j;
        end;
        y(n)=[y(n)+x(i)*h(j)];
    end;
end;
disp('The Circular Covolution of the signal is: ');
y
figure;
subplot(2,2,1),stem(x,'b');grid on;
title(' INPUT SIGNAL ');
xlabel('n(samples)'); ylabel('magnitude');
subplot(2,2,2),stem(h,'r');grid on;
title(' IMPULSE RESPONSE ');
xlabel('n(samples)'); ylabel('magnitude');
subplot(2,2,3),stem(y,'m');grid on;
title(' OUTPUT SIGNAL ');
xlabel('n(samples)'); ylabel('magnitude');