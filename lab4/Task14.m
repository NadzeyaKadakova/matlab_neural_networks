P=[[0;2] [1;0] [0;-2] [2;0]];
T = [1 1 0 0];
net=newp([-2 2; -2 2],1);
net.trainParam.epochs=20;      
net = init(net);                
net = train(net,P,T);
a=sim(net,P)
plotpv(P,a)
plotpc(net.IW{1,1},net.b{1})