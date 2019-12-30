figure 
axis([-2 2 -2 2])
hold on
A  = ginput(1)
plot(A(1),A(2),'o')
B  = ginput(1)
plot(B(1),B(2),'o')
plot([A(1) B(1)],[A(2) B(2)],'b')
net=newp([-2 2; -2 2], 1);
w = [A(2) - B(2),B(1) - A(1)];
b = A(1)*B(2)-B(1)*A(2);
net.IW{1,1} = w;
net.b{1} = b;
while true
    p = ginput(1);
    if sim(net,p')
        plot(p(1),p(2),'+')
    else
        plot(p(1),p(2),'*')
    end
end