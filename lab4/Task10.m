figure
axis([0 10 0 10]);
hold on;
[xA,yA] = ginput(1);
[xB,yB] = ginput(1);
[xC,yC] = ginput(1);
A = [xA;yA];
B = [xB;yB];
C = [xC;yC];

plot(xA,yA,'b*',xB,yB,'b*',xC,yC,'b*',[A(1) B(1) C(1) A(1)],[A(2) B(2) C(2) A(2)],'b')

net=newp([0 10; 0 10], 3);
n1 = [-1 1].*(B-A)';
w1 = n1(end:-1:1);
n2 = [-1 1].*(C-B)';
w2 = n2(end:-1:1);
n3 = [-1 1].*(A-C)';
w3 = n3(end:-1:1);
b1 = - A'*w1';
b2 = - B'*w2';
b3 = - C'*w3';
% w1 = [A(2) - B(2),B(1) - A(1)];
% w2 = [C(2) - B(2),C(1) - B(1)];
% w3 = [A(2) - C(2),A(1) - C(1)];
% b1 = A(1)*B(2)-B(1)*A(2);
% b2 = B(1)*C(2)-C(1)*B(2);
% b3 = C(1)*A(2)-A(1)*C(2);
net.IW{1,1} = [w1;w2;w3];
net.b{1} = [b1;b2;b3];
while true
    p = ginput(1);
    sim(net,p')
    if sim(net,p')        
        plot(p(1),p(2),'+')
    else
        plot(p(1),p(2),'*')
    end
end