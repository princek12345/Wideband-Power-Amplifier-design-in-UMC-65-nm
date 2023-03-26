clear all;
close all;
clc;

x=csvread("final_design_after_EM_with_ind_EM_ri_115_PAE_OP_new.csv",1,0);
xn=csvread("final_design_after_EM_with_ind_EM_ri_115_PAE_OP_new_26G.csv",1,0);
Pin = x(:,1);
PAE_data = x(:,2);
Pout= x(:,4);
PAE_data_26G = xn(:,2);
Pout_26G = xn(:,4);


Pin=interp(Pin,10);
PAE_data=interp(PAE_data,10);
Pout=interp(Pout,10);
PAE_data_26G=interp(PAE_data_26G,10);
Pout_26G=interp(Pout_26G,10);


I=ones(length(Pin),1);

%x1=0.25*I;
%P_1dB=interp1(Pin,PAE_data,0.25); 


figure;
plot(Pin,PAE_data,"Linewidth",1.5);
hold on;
plot(Pin,PAE_data_26G,"Linewidth",1.5);

grid on;

%y_3dB=(max(S21)-3)*I;
%y_10dB=(-10)*I;

%plot(Pin,y_3dB,"--");
%plot(x1,PAE_data,"--");
hold off;

xlim([-5 10]);

xlabel("input power (dBm)");
ylabel("Value (%)");
legend("@ 28 GHz", "@ 26 GHz");
title("Power Added Effeciency (PAE) Plot");

figure(2);
plot(Pin,Pout,"Linewidth",1.5);
hold on;
plot(Pin,Pout_26G,"Linewidth",1.5);
hold off;

grid on;

%x2=(12.97-6)*I; % 6-dB back-off
%x3=12.97*I;

%y_6dB=(max(S21)-3)*I;
%y_10dB=(-10)*I;

%plot(Pin,y_3dB,"--");
%plot(x2,PAE_data,"--");
%plot(x3,PAE_data,"--");
hold off;
xlim([-5 10]);
xlabel("input power (dBm)");
ylabel("output power (dBm)");
legend("@ 28 GHz", "@ 26 GHz");
title("Output Power Plot");

