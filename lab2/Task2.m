flag=true;
while flag,
A = randi([-5 5],1,3);
B = randi([-5 5],1,3);
C = randi([-5 5],1,3);
if dot(A-C,B-C) > 0 
    flag = false;
end
end

syms x y z

M=[[x y z]-A; B-A; C-A];
d=det(M);
finPlane = d;
FP=solve(d,'z');
fsurf(FP)

line([A(1)], [A(2)], [A(3)],'Color', 'green', 'Marker', '*')
line([B(1)], [B(2)], [B(3)],'Color', 'green', 'Marker', '*')
line([C(1)], [C(2)], [C(3)],'Color', 'green', 'Marker', '*')

finPl(x,y,z)=finPlane;
N=100;
Points = -5+(5+5).*rand(N,3);

for i=1:N
    if finPl(Points(i,1), Points(i,2), Points(i,3))>0
        line([Points(i,1)], [Points(i,2)], [Points(i,3)],'Color', 'red', 'Marker', '*')
    end
    
    if finPl(Points(i,1), Points(i,2), Points(i,3))<0
        line([Points(i,1)], [Points(i,2)], [Points(i,3)],'Color', 'blue', 'Marker', '*')
    end
end
