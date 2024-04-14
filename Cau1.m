clc; clear; close all;

N_fft = 500;
N = 39;

sigma_p = 0.08;
sigma_s = 0.08;
omega_c = pi/2;
omega_p = omega_c + 0.2;
omega_s = omega_c - 0.2;

[w] = Hanning(N) ;
[hn_LT] = CaoQua(omega_c, N);

hn = hn_LT.*w ;

Hw = fft(hn,N_fft);

delta = 2*pi/N_fft;
omega = 0:delta:pi-delta;
figure(1)
plot(omega,abs(Hw(1:N_fft/2)),'b-','linewidth',1.8); hold on;
line([0 pi],[1-sigma_p 1-sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([0 pi],[1+sigma_p 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([0 pi],[sigma_s sigma_s],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_p omega_p],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_s omega_s],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_c omega_c],[0 1+sigma_p],'Color','red','LineStyle','--','linewidth',1.6);
xlabel('\omega'); ylabel('|H(\omega)|');






