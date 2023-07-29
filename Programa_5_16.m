clear all,close all,clc
t=0:0.05:3;
A=[0 1;-10 -5];
B=[0;0];
C=[0 0];
D=[0];
[y,x]=initial(A,B,C,D,[2;1],t);
x1=[1 0]*x';
x2=[0 1]*x';
f1=figure(1);
f1.Name="Respuesta a condicion inicial";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
plot(t,x1,'o',t,x1,t,x2,'x',t,x2)
grid
title('Respuesta a condición inicial')
xlabel('t Seg')
ylabel('Variables de estado x_{1} y x_{2}')