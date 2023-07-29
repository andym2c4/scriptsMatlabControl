clear all,close all,clc
%%
A=[-1,-1;6.5,0];
B=[1,1;1,0];
C=[1,0;0,1];
D=zeros(2,2);
f1=figure(1);
f1.Name="Curva de respuesta a escalón unitario";
% f1.Position=[10,180,500,500];
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
% saveas(f1,f1.Name,"jpeg")
step(A,B,C,D)