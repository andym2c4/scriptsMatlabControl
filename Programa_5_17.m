clear all,close all,clc
t=0:0.05:10;
A=[0 1 0;0 0 1;-10 -17 -8];
B=[0;0;0];
C=[1 0 0];
D=[0];
y=initial(A,B,C,D,[2;1;0.5],t);
f1=figure(1);
f1.Name="Respuesta a condicion inicial";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
plot(t,y)
grid
title('Respuesta a condición inicial')
xlabel('t (seg)')
ylabel('Salida y')