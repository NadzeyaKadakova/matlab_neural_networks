hold on
P=[[1;1] [1;2] [2;-1] [2;0] [-1;2] [-2;1] [-1;-1] [-2;-2]]; 
T=[[0;0] [0;0] [0;1] [0;1] [1;0] [1;0] [1;1] [1;1]]; 
net = newp([-2 2;-2 2],2);
net.trainParam.epochs=20;
net=init(net);
net=train(net,P,T);
Y=sim(net,P)
hold on
plotpv(P,Y)
plotpc(net.IW{1,1},net.b{1})

while true,
    a = ginput(1);
    hold on
    axis([-3 3 -3 3])
    b=sim(net,a');
    plotpv(a',b, [-3 3 -3 3])
end
