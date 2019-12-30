net = newp([-2 2;-2 2;-2 2],1);
net.IW{1,1} = [2 3 -1];
net.b{1} = -4;
p = [[1;1;1] [2;2;2] [1.5;1.5;1.5] [-1;-1;-1] [-2;-2;-2] [-1.5;-1.5;-1.5]];
a = sim(net,p);
plotpv(p, a)
plotpc(net.IW{1,1}, net.b{1})