clear all;
close all;
clc;

x=csvread("final_design_after_EM_with_ind_EM_ri_115_S_param_new.csv",1,0);
f = x(:,1)/1e9;
S11 = x(:,2);
S21 = x(:,4);
S22 = x(:,6);

f=interp(f,10);
S11=interp(S11,10);
S21=interp(S21,10);
S22=interp(S22,10);


I=ones(length(f),1);

figure;
plot(f,S11,"Linewidth",1.5);
hold on;
plot(f,S22,"Linewidth",1.5);
plot(f,S21,"Linewidth",1.5);

grid on;

%f0=interp1(f,S21,[max(S21)]);
f0 = 26;

y_3dB=(max(S21)-3)*I;
y_10dB=(-10)*I;
y_all = linspace(-40,10,length(f));

plot(f,y_3dB,"k--");
plot(f,y_10dB,"k--");
plot(f0*I,y_all,"k--");
xlim([20 40]);
hold off;

xlabel("frequency (GHz)");
ylabel("Value (dB)");
title("S-paramter plot");
legend("S11","S22","S21");