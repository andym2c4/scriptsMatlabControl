% ------------- Respuesta a un escalón unitario ------------
%***** Introduzca el numerador y el denominador de la función
% de transferencia *****
close all,clear all,clc
num=[25];
den=[1,4,25];
% ***** Introduzca la siguiente orden de respuesta escalón *****
f1=figure(1);
step(num,den)
% ***** Introduzca grid y el título de la gráfica *****
grid
title("Respuesta a un escalón unitario de G(s)=25/(s^2+4s+25)")
f1.Name="Respuesta a un escalón unitario de G(s)";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
