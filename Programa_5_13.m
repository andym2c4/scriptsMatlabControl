clear all,close all,clc
t=0:0.1:12;
A=[-1 0.5;-1 0];
B=[0;1];
C=[1 0];
D=[0];
% Para la entrada en escalón unitario u=1(t),
% use la orden "y=step(A,B,C,D,1,t)".
y=step(A,B,C,D,1,t);
f1=figure(1);
f1.Name="Respuesta a un impulso unitario";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
subplot(1,2,1)
plot(t,y)
grid
title("Respuesta a un escal\'{o}n unitario",'Interpreter','latex')
axis([0,12,0,1.2])
xlabel('t Seg','Interpreter','latex')
ylabel('Salida','Interpreter','latex')
% Para la respuesta a una entrada exponencial u=exp(–t),
% use la orden z=lsim(A,B,C,D,u,t).
u=exp(-t);
z=lsim(A,B,C,D,u,t);
subplot(1,2,2)
plot(t,u,'-',t,z,'o')
axis([0,12,-0.2,1.2])
grid
title('Respuesta a una entrada exponencial $u=e^{-t}$',Interpreter='latex')
xlabel('t Seg','Interpreter','latex')
ylabel('Entrada exponencial y salida del sistema','Interpreter','latex')
text(2.3,0.49,'Entrada exponencial','Interpreter','latex')
text(6.4,0.28,'Salida','Interpreter','latex')