ap=1;
as=20;
wp=10;
ws=30;
[N, wc] = buttord(wp, ws, ap, as, 's')
[b,a]=butter(N,wc,'s')
tf(b,a)
freqs(b,a)