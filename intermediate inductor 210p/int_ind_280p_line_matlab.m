clear all;
close all;
clc;

x=csvread("L_and_Q_values_280p_line.csv",1,0);
f = x(:,1)/10e8;
L = x(:,2)*1e12;
Q = x(:,4);
I=ones(length(f),1);

y1 = linspace(0,10,length(f));

figure;
plotyy(f,L,f,Q);
hold on;
grid on;
%plot(f,Q,"--");

xlabel("Frequency (GHz)");
%ylabel("Inductance (pH)","Quality factor");
%ylabel("Quality factor");
%xlim([20 40]);
%ylim([-30 70]);
title("Inductance and Quality factor plot");
%legend("L=150 pH", "L=162.5 pH", "L=175 pH", "L=182 pH","L=200 pH"," ");