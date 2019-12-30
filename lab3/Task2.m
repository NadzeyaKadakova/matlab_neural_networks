Data=importdata('Task2Data.txt');
t=Data(1,:)';
y=Data(2,:)';
A=[sin(t) cos(t) sin(2*t) cos(2*t)];
coef=A\y
Task2b(t, coef(1), coef(2), coef(3), coef(4))