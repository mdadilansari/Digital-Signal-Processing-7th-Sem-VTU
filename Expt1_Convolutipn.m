clc;
close all;
x=input('Enter the first sequence');
h=input('Enter the second sequence');
L=length(x);
M=length(h);
len_y=L+M-1;
y=zeros(1,len_y);
for i=0:len_y
  for j=0:len_y
    if (i-j+1)>0 && (i-j+1)<=M && (j+1)<=L
      y(i+1)=y(i+1)+x(j+1)*h(i-j+1);
    endif
  endfor
endfor
disp('The convolution result is ');
disp(y);
stem(x,'r');
figure;
stem(h,'b');
figure;
stem(y,'g');
figure;
