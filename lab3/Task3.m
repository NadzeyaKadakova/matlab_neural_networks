Data=importdata('Task3Data.txt');
t1=Data(1,:)';
y1=Data(2,:)';
t2=Data(3,1:7)';
y2=Data(4,1:7)';
t3=Data(5,1:7)';
y3=Data(6,1:7)';
A1=[sin(t1) cos(t1) sin(3*t1) cos(2*t1)];
A2=[sin(t2) cos(t2) sin(3*t2) cos(2*t2)];
A3=[sin(t3) cos(t3) sin(3*t3) cos(2*t3)];
coef1=A1\y1
coef2=A2\y2
coef3=A3\y3
t=(-5:0.1:5)';
Task3b(t, coef1(1), coef1(2), coef1(3), coef1(4))
Task3b(t, coef2(1), coef2(2), coef2(3), coef2(4))
Task3b(t, coef3(1), coef3(2), coef3(3), coef3(4))