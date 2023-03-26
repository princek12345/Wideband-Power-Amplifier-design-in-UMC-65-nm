clear all;
close all;
clc;

x=csvread("PA_ind_L0_sweep.csv",1,0);
f = x(:,1)/10e8;
L_68 = sqrt(x(:,2).^2 + x(:,3).^2)*1000;
L_83 = sqrt(x(:,5).^2 + x(:,6).^2)*1000;
L_78 = sqrt(x(:,8).^2 + x(:,9).^2)*1000;
L_83 = sqrt(x(:,11).^2 + x(:,12).^2)*1000;
L_88 = sqrt(x(:,14).^2 + x(:,15).^2)*1000;

I=ones(length(f),1);

y1 = linspace(0,14,length(f));

figure;
plot(f,L_68);
hold on;
grid on;
plot(f,L_83);
plot(f,L_78,'Linewidth',2.0);
plot(f,L_83);
plot(f,L_88);
plot(28*I, y1,"k--");

xlabel("Frequency (GHz)");
ylabel("Voltage magnitude (mV)");
%xlim([20 40]);
%ylim([-30 70]);
title("Output Voltage with Inductor sweep");
legend("L=68 pH", "L=73 pH", "L=78 pH", "L=83 pH", "L=88 pH"," ");