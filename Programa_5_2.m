% ***** En este programa se representan las Curvas de
% respuesta escalón de un sistema que tiene dos entradas
%(u1 y u2) y dos salidas (y1 y y2) *****
% ***** Se representa en primer lugar la curva de respuesta
% escalón cuando la entrada es u1. A continuación se
% representa la curva de respuesta escalón cuando la entrada
% es u2 *****
% ***** Introducir las matrices A, B, C, y D *****
clear all,close all,clc;
A=[-1,-1;6.5,0];
B=[1,1;1,0];
C=[1,0;0,1];
D=[0,0;0,0];
% ***** Para representar la curva de respuesta escalón
% cuando la entrada es u1, introduzca la orden
% 'step(A,B,C,D,1)' *****
% ***** Para representar la curva de respuesta escalón
% cuando la entrada es u1, introduzca la orden
% 'step(A,B,C,D,1)' *****
f1=figure(1);
f1.Name="Curvas de respuesta a escalón";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
subplot(1,2,1)
[Y,X,T]=step(A,B,C,D,1);
plot(T,Y(:,1),T,Y(:,2))
axis([min(T),max(T),min(min(Y(:,1)),min(Y(:,2))),max(max(Y(:,1)),max(Y(:,2)))])
grid
title ('Respuesta a un escalón: Entrada=u_{1} (u_{2}=0)')
text(3.4, -0.06,'Y1')
text(3.4, 1.4,'Y2')
% ***** A continuación se representa la curva de respuesta
% escalón cuando la entrada es u2. Introduzca la orden
% 'step(A,B,C,D,2)' *****
subplot(1,2,2)
[Y,X,T]=step(A,B,C,D,2);
plot(T,Y(:,1),T,Y(:,2))
axis([min(T),max(T),min(min(Y(:,1)),min(Y(:,2))),max(max(Y(:,1)),max(Y(:,2)))])
grid
title ('Respuesta a un escalón: Entrada=u_{2} (u_{1}=0)')
text(3,0.14,'Y1')
text(2.8,1.1,'Y2')