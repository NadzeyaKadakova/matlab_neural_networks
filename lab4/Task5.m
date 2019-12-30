net=newp([0 1; 0 1], 1);
P=[[0;0] [0;1] [1;0] [1;1]];
T=[0 0 0 1];
net.trainParam.epochs=20;
net=init(net);
net=train(net, P, T);
net.IW{1,1}, net.b{1}
Y=sim(net, P)
plotpv(P, T)
plotpc(net.IW{1,1}, net.b{1})




