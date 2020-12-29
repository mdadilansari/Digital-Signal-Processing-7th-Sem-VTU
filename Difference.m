clc;
clear all;
close all;
disp('The solution of diff equation')
b=[1];
a=[1 -0.5];
n=1:5;
x(n)=6;
ic=[1];
ici=filtic(b,a,ic)
y=filter(b,a,x(n),ici)