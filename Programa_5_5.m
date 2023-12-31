close all,clear all,clc
num=[25];
den=[1,4,25];
t=0:0.01:3;
[y,x,t]=step(num,den,t);
f1=figure(1);
f1.Name="Respuesta a un escalón unitario de G(s)";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
plot(t,y)
grid
t="Respuesta a un escal\'{o}n unitario de $\frac{25}{s^2+4s+25}$";
title(t,Interpreter="latex")
xlabel("t Seg","Interpreter","latex")
ylabel("Salida","Interpreter","latex")