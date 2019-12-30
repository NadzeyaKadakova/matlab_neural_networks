net=newp([-4 4; -4 4], 1);
b = 0;
net.b{1}=b;
w=[1 1];
net.IW{1,1}=w;
p=[[-2;2] [1;2] [0;0] [3;-2]];
t = [0 1 0 1];
% while a~=t
%     a=sim(net,p);
%     e=t-a;
%     dw=e*p';
%     w=w+dw;
%     net.Iw{1,1}=w;
% end

for i = 1:4
    p1=p(:,i);
    a=sim(net,p1);
    e=t(i)-a;
    dw=e*p1';
    w=w+dw;
    b = b+e;
    net.b{1}=b;
    net.Iw{1,1}=w;
end
res = sim(net,p)
res == t





