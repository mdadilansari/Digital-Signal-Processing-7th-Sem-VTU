clc;
clear all;
close all;
x1=input('enter 1: ');
x2=input('enter 2');
L=length(x1);
M=length(x2);
z=max(L,M);
diff_len=L-M;

if(diff_len>=0)
x2=[x2,zeros(1,diff_len)];
else
x1=[x1,zeros(1,diff_len)];
end

x1=transpose(x1);
x2=transpose(x2);
temp=x2;

for i=1:z-1;
temp=circshift(temp,1);
x2=horzcat(x2,temp);

end
display('The circ conv is : ')
y=x2*x1;
y