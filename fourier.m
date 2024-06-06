clear all clc
x=[0,30,0,0,0,0,0,0,10,0];
%here the capitals don't matter
X=x(1);
%X=@(n) x(1);
syms n
for k=2:length(x) 
    X= X+x(k)*exp(-2j*pi*(n/length(x))*k);
end
H=char(X);
X=@(n) 3*exp(-pi*n*i) + 3*exp(-pi*n*2*i) + 3*exp(-(pi*n*i)/2) + 2*exp(-(pi*n*i)/3) + 3*exp(-(pi*n*3*i)/2) + exp(-(pi*n*2*i)/3) + 2*exp(-(pi*n*4*i)/3) + exp(-(pi*n*5*i)/3) + 2*exp(-(pi*n*5*i)/6) + exp(-(pi*n*7*i)/6) + 2*exp(-(pi*n*11*i)/6) + 1;
Xabs=[];
Xang=[];
for k=1:length(x)
    Xabs(k)=abs(X(k));
    Xang(k)=angle(X(k+1));
end
k=1:length(x);
stem(k,x),figure
stem(k,sqrt(Xabs)),figure
stem(k,Xang);
