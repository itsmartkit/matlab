function S=t2f(s,fs)
%s �����źţ�S��s��Ƶ�ף�fs�ǲ�����
N=length(s);%�ܲ�������
T=1/fs*N;%�۲�ʱ��
f=[-N/2:(N/2-1)]/T;%Ƶ�ʲ�����
tmp1=fft(s)/fs;
tmp2=N*ifft(s)/fs;
S(1:N/2)=tmp2(N/2+1:-1:2);
S(N/2+1:N)=tmp1(1:N/2);
S=S.*exp(j*pi*f*T);
end