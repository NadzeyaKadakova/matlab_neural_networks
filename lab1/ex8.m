net=network(1,1,1,1,0,1);
net.layers{1}.transferFcn='hardlim';
net.layers{1}.size=1;
net.inputs{1}.size=1;
net.IW{1,1}=-2; 
net.b{1}=1;
sim(net,1)
sim(net,0)