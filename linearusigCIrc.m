clc;
clear all;
close all;
x1=input('1');
x2=input('2');
L=length(x1);
M=length(x2);
len=L+M-1'
a=len-L;
b=len-M;
if(a>=0)
x1=[x1,zeros(1,a)];
end

if (b>=0)
x2=[x2,zeros(1,b)];
end

x1=transpose(x1);
x2=transpose(x2);
temp=x2;

for (i=1:len-1)
  temp=circshift(temp,1);
  x2=horzcat(x2,temp);
end

y=x2*x1