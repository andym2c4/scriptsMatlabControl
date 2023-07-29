clear all,close all,clc
t=0:0.01:3;
A=[0 1;-10,-5];
B=[2;1];
f1=figure(1);
f1.Name="Respuesta del sistema";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
[x,z,t]=step(A,B,A,B,1,t);
x1=[1 0]*x';
x2=[0 1]*x';
plot(t,x1,'x',t,x2,'-')
grid
title('Respuesta a condición inicial')
xlabel('t Seg')
ylabel('Variables de estado x1 y x2')
legend({"x_{1}","x_{2}"})