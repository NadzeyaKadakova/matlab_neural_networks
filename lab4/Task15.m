P=[[-1;-1] [-1;0] [-1;1] [0;1] [0;-1] [1;-1] [1;0] [1;1]];
T=[1 1 1 1 0 0 0 0];
net=newp([-1 1; -1 1],1); 
net.trainParam.epochs=20;      
ne1t = init(net);                
net = train(net,P,T);
a=sim(net,P)
plotpv(P,a)
plotpc(net.IW{1,1},net.b{1})
