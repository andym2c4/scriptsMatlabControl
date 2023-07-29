% --------------- Respuesta a una rampa unitaria --------------
%***** La respuesta a una rampa unitaria se obtiene añadiendo una nueva
% variable de estado x3. La dimensión de la ecuación de estado
% se amplía en uno *****
% ***** Introduzca las matrices A, B, C, y D de la ecuación de estado original
% y la ecuación de salida *****
clear all,close all,clc
A=[0 1;-1 -1];
B=[0; 1];
C=[1 0];
D=[0];
% ***** Introduzca las matrices A, B, C, y D de la nueva,
% ecuación de estado ampliada y de la ecuación de salida *****
AA=[A zeros(2,1);C 0];
BB=[B;0];
CC=[0 0 1];
DD=[0];
% ***** Introduzca la orden de respuesta a un salto:
% [z,x,t]=step(AA,BB,CC,DD) *****
f1=figure(1);
f1.Name="Respuesta a una rampa unitaria";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
[z,x,t]=step(AA,BB,CC,DD);
% ***** Para representar x3 añada la entrada rampa unitaria en la gráfica
% introduciendo la siguiente orden: plot(t,x3,'o',t,t,'-') *****
x3=[0 0 1]*x';
plot(t,x3,'o',t,t,'-')
grid
title('Respuesta a una rampa unitaria')
axis([0 10 0 10])
xlabel('t Seg')
ylabel('Entrada y Salida')