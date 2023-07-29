clear all,close all,clc
num=[1,0];
den=[1,0.2,1];
f1=figure(1);
step(num,den);
grid
f1.Name="Respuesta a un impulso unitario";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
grid
tt="Respuesta a un impulso unitario de $sG_{(s)}=\frac{s}{s^2+0.2s+1}$";
title(tt,"Interpreter","latex")
xlabel("Tiempo","Interpreter","latex")
ylabel("Amplitud","Interpreter","latex")