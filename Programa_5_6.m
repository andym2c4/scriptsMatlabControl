close all,clear all,clc
% ------- Gráficas bidimensional y tridimensional de la respuesta
% escalón de un sistema de segundo orden estandar con wn= 1
% y zeta=0, 0.2, 0.4, 0.6, 0.8, y 1. ------
t=0:0.2:25;
zeta=[0,0.2,0.4,0.6,0.8,1];
for n=1:length(zeta)
    num=[1];
    den=[1 2*zeta(n) 1];
    [y(1:length(t),n),x,t]=step(num,den,t);
end
% Para representar un diagrama bidimensional, introduzca la orden
% plot(t,y).
f1=figure(1);
f1.Name="Respuesta a un escalón unitario";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
plot(t,y)
grid
title("Respuesta a un escalón unitario con \omega_n=1","y \zeta=0,0.2,0.4,0.6,0.8,1")
leyenda={};
for n=1:length(y(1,:))
    leyenda{end+1}="\zeta = "+num2str(zeta(n));
end
legend(leyenda)
% saveas(f1,f1.Name,"jpeg")
f2=figure(2);
% Para representar un diagrama tridimensional, introduzca la orden
% mesh(t,zeta,y')
mesh(t,zeta,y')
f2.Name="Respuesta tridimensional a un escalón unitario";
f2.WindowStyle="docked";
f2.Pointer="crosshair";
f2.NumberTitle="off";
title(f2.Name)
xlabel("t Seg")
ylabel("\zeta")
zlabel("Respuesta")