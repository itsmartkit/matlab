function y = LPF(x,fm,fs)
n=length(x);
T=n/fs;
f=-fs/2:1/T:fs/2-1/T;
X=t2f(x,fs);
X(abs(f)>fm)=0;
y=f2t(X,fs);
end