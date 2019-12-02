%Nithi Subbaian
%MATLAB Assignment 7

%Hi Brenda, 
%I changed the 500K to 500 as Brian told me that's what you intended.

%% Q1
signal = zeros(300,500);
for f=0:1:500
    t= 0:0.001:2;
final_signal = sin(2*pi*f*t);
end

%% Q2
fs = 100000;
dt = 1/fs;
Hd_BW = BW;
y = filter(Hd_BW, final_signal);
plot(t, final_signal, t, y); legend ('signal', 'y'); title('Butterworth lowpass filter')
 
N = 2^15;
S = fft(y, N);
S = fftshift(abs(S))/N;
F = fs.*(-N/2:N/2-1)/N;

figure
plot(F, S)
title('Fourier Transform of Butterworth lowpass filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude')


%% Q3
Hd_cheb_one = cheb_one;
y = filter(Hd_cheb_one, final_signal);
figure
plot(t, final_signal, t, y); legend ('signal', 'y'); title('Chebychev I highpass filter')


N3 = 2^15;
S3 = fft(y, N3);
S3 = fftshift(abs(S3))/N3;
F3 = fs.*(-N3/2:N3/2-1)/N3;

figure
plot(F3, S3)
title('Fourier Transform of Chebychev I highpass filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

%% Q4
Hd_cheb_two = cheb_two;
y = filter(Hd_cheb_two, final_signal);
figure
plot(t, final_signal, t, y); legend ('signal', 'y'); title('Chebychev II bandstop filter')


N4 = 2^15;
S4 = fft(y, N4);
S4 = fftshift(abs(S4))/N4;
F4 = fs.*(-N4/2:N4/2-1)/N4;

figure
plot(F4, S4)
title('Fourier Transform of Chebychev II bandstop filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

%% Q5
Hd_elliptic = elliptic;
y = filter(Hd_elliptic, final_signal);
figure
plot(t, final_signal, t, y); legend ('signal', 'y'); title('Elliptic bandpass filter')


N5 = 2^15;
S5 = fft(y, N5);
S5 = fftshift(abs(S5))/N5;
F5 = fs.*(-N5/2:N5/2-1)/N5;

figure
plot(F5, S5)
title('Fourier Transform of Elliptic bandpass filter')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

