% ------- Respuesta a una rampa ------
clear all,close all, clc
num=[2 1];
den=[1 1 1];
t=0:0.1:10;
r=t;
y=lsim(num,den,r,t);
f1=figure(1);
f1.Name="Respuesta a un impulso unitario";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
plot(t,r,'-',t,y,'o')
grid
title('Respuesta a una rampa unitaria obtenida con la orden "lsim"')
xlabel('t Seg')
ylabel('Entrada en rampa unitaria y salida del sistema')
text(6.3,4.6, 'Entrada en rampa unitaria')
text(4.75,9.0,'Salida')