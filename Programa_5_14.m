clear all,close all,clc
% --------------- Respuesta a condición inicial --------------%
% ***** La respuesta del sistema a condición inicial se convierte a una respuesta
% en escalón unitario modificando el numerador del polinomio *****
% **** Introduzca el numerador y el denominador de la función
% de transferencia G(s) ****
num=[0.1 0.35 0];
den=[1 3 2];
% ***** Introduzca la siguiente orden de respuesta a un salto *****
f1=figure(1);
f1.Name="Respuesta del sistema de resorte-masa-amortiguador";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
step(num,den)
% ***** Introduzca grid y title en la gráfica *****
grid
title('Respuesta del sistema de resorte-masa-amortiguador a condición inicial')
