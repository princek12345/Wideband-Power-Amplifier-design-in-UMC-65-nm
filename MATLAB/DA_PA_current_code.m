clear all;
close all;
clc;

x=csvread("DA_PA_current.csv",1,0);
t = x(:,1)*10e8;
I_DA = x(:,2)*1000;
I_PA = x(:,4)*1000;
I=ones(length(t),1);

figure;
plot(t,I_DA,'--',"Linewidth",1.5);
hold on;
grid on;
plot(t,I_PA,"Linewidth",1.5);

%x1=0.45*I;
%y1=Id;

%Idb=interp1(Vgs,Id,0.45); %interpolate the Id=f(Vgs) to get Idb at Vgs=0.45

%plot(x1,y1,"--");
%plot(x1,Idb*I);

xlabel("Time (ns)");
ylabel("current magnitude (mA)");
xlim([3.5 3.8]);
ylim([-30 70]);
title("Current plot of DA and PA stage");
legend("DA Stage", "PA Stage");