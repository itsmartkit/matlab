function s=f2t(S,fs)
N=length(S);%�ܲ�������
T=N/fs;
t=[-T/2:(N/2-1)]/T;%ʱ�������
tmp1=fft(s)/fs;
tmp2=N*ifft(s)/fs;
S(1:N/2)=tmp2(N/2+1:-1:2);
S(N/2+1:N)=tmp1(1:N/2);
S=S.*exp(j*pi*f*T);
end

