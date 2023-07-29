% --------------- Respuesta a una rampa unitaria --------------
%***** La respuesta a una rampa unitaria se obtiene como
% la respuesta a un escalón unitario de G(s)/s *****
% ***** Introduzca el numerador y el denominador de G(s)/s *****
clear all,close all,clc
num=[2 1];
den=[1 1 1 0];
% ***** Especifique los puntos de tiempo de cálculo (como t=0:0.1:7)
% e introduzca entonces la orden de respuesta a un escalón:
% c=step(num,den,t) *****
t=0:0.1:10;
f1=figure(1);
f1.Name="Respuesta a una rampa unitaria";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
c=step(num,den,t);
% ***** Para representar la respuesta a una rampa, añada la entrada de
% referencia a la gráfica. La entrada de referencia es t. Añada como
% argumento de la orden plot lo siguiente: t, t,'-'. Así la orden plot
% queda como sigue: plot(t,c,'o',t,t,'-') *****
plot(t,c,'o',t,t,'-')
% ***** Añada grid, title, xlabel, e ylabel *****
grid
t1="Respuesta a una rampa unitaria el sistema";
t2="$G_{(s)}=\frac{(2s+1)}{(s^2+s+1)}$";
title(t1,t2,Interpreter="latex")
xlabel('t Seg',Interpreter="latex")
ylabel('Entrada y Salida',Interpreter="latex")