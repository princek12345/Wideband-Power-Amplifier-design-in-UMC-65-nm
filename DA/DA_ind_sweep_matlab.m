clear all;
close all;
clc;

x=csvread("DA_ind_sweep_data_mag.csv",1,0);
f = x(:,1)/10e8;
L_150 = sqrt(x(:,2).^2 + x(:,3).^2)*1000;
L_162_5 = sqrt(x(:,5).^2 + x(:,6).^2)*1000;
%L_175 = sqrt(x(:,8).^2 + x(:,9).^2)*1000;
L_182 = sqrt(x(:,11).^2 + x(:,12).^2)*1000;
%L_187_5 = sqrt(x(:,14).^2 + x(:,15).^2)*1000;
L_200 = sqrt(x(:,17).^2 + x(:,18).^2)*1000;


% L_150 = x(:,2)*1e3;
% L_162_5 = x(:,4)*1e3;
% L_175 = x(:,6)*1e3;
% L_182 = x(:,8)*1e3;
% %L_187_5 = x(:,10);
% L_200 = x(:,12)*1e3;
% %L_88 = sqrt(x(:,14).^2 + x(:,15).^2)*1000;

I=ones(length(f),1);

y1 = linspace(0.1,0.39,length(f));

figure;
plot(f,L_150);
hold on;
grid on;
plot(f,L_162_5);
%plot(f,L_175);
plot(f,L_182,'Linewidth',2.0);
%plot(f,L_187_5);
plot(f,L_200);
plot(28*I, y1,"k--");

xlabel("Frequency (GHz)");
ylabel("Voltage magnitude (mV)");
%xlim([20 40]);
%ylim([-30 70]);
title("Output Voltage with Inductor sweep");
legend("L=150 pH", "L=162.5 pH", "L=182 pH","L=200 pH"," ");