clear all,close all,clc
% ------- Respuesta a escalón unitario de C(s)/R(s) y desarrollo
% en fracciones simples de C(s) -------
num=[3 25 72 80];
den=[1 8 40 96 80];
f1=figure(1);
f1.Name="Respuesta a condicion inicial";
f1.WindowStyle="docked";
f1.Pointer="crosshair";
f1.NumberTitle="off";
step(num,den);
v=[0 3 0 1.2]; axis(v), grid
% Para obtener el desarrollo en fracciones simples de C(s),
% introduzca las órdenes
num1=num;
den1=[den,0];
[r,p,k]=residue(num1,den1);
%%
syms s
syms t
assume(t,"real")
assume(s,"real")
Cs=racionalizar(r,p,s);
Cs=sum(Cs);
disp("Cs=")
pretty(Cs)
%% asumiendo que es sobre real
Cs=real(Cs);
Ct=ilaplace(Cs);
Ct=simplify(Ct);
disp("Ct=")
pretty(Ct)
%%
f2=figure(2);
f2.Name="Respuesta a condicion inicial";
f2.WindowStyle="docked";
f2.Pointer="crosshair";
f2.NumberTitle="off";
tiempo=0:0.001:3;
Cty=subs(Ct,t,tiempo);
plot(tiempo,Cty)