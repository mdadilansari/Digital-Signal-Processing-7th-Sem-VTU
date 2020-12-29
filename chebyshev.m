ap=2;
as=20;
wp=1;
ws=1.3;
[N, wc]=cheb1ord(wp,ws,ap,as,'s')
[b,a]=cheby1(N,2,20,'s')
tf(b,a)
freqz(b,a)