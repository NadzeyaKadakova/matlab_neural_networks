m=[50 75 100 125 150 175 200].';
v=[11 28 56 98 158 225 330].';
l=[1 1 1 1 1 1 1].';
Y=log(v);
x=log(m);
A=[x l];
coef=A\Y;
b=coef(1);
a=exp(coef(2));
t=200:25:400;
y1=a.*t.^b;
Task4b(t,a,b)